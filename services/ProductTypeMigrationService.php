<?php

/**
 * Isotope eCommerce Migration Tool
 *
 * Copyright (C) 2014 terminal42 gmbh
 *
 * @link       http://isotopeecommerce.org
 * @license    http://opensource.org/licenses/lgpl-3.0.html
 */

namespace Isotope\Migration\Service;


class ProductTypeMigrationService extends AbstractConfigfreeMigrationService
{
    /**
     * Return a name for the migration step
     *
     * @return string
     */
    public function getName()
    {
        return $this->trans('service.product_type.service_name');
    }

    /**
     * Return a description what this step is about
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->trans('service.product_type.service_description');
    }

    /**
     * Get SQL commands to migration the database
     *
     * @return array
     */
    public function getMigrationSQL()
    {
        $this->checkMigrationStatus();

        $sql = $this->renameTable('tl_iso_producttypes', 'tl_iso_producttype');
        $sql[] = "UPDATE tl_iso_producttype SET class='standard' WHERE class='regular'";

        return $sql;
    }

    /**
     * Execute manual data migration after all the database fields are up-to-date
     */
    public function postMigration()
    {
        $productTypes = $this->db->fetchAll("SELECT id, attributes, variant_attributes FROM tl_iso_producttype");

        foreach ($productTypes as $type) {
            $attributes = @unserialize($type['attributes']);
            $variantAttributes = @unserialize($type['variant_attributes']);

            $attributes = is_array($attributes) ? serialize($this->convertAttributes($attributes)) : '';
            $variantAttributes = is_array($variantAttributes) ? serialize($this->convertAttributes($variantAttributes)) : '';

            $this->db->update(
                'tl_iso_producttype',
                array(
                    'attributes'         => $attributes,
                    'variant_attributes' => $variantAttributes
                ),
                array(
                    'id' => $type['id']
                )
            );
        }
    }

    /**
     * Make sure database structure is correct before migration
     *
     * @throws \RuntimeException
     */
    protected function verifyIntegrity()
    {
        $this->dbcheck
            ->tableMustExist('tl_iso_producttypes')
            ->tableMustNotExist('tl_iso_producttype')
            ->columnMustExist('tl_iso_producttypes', 'id')
            ->columnMustExist('tl_iso_producttypes', 'attributes')
            ->columnMustExist('tl_iso_producttypes', 'variant_attributes');
    }


    private function convertAttributes(array $oldData)
    {
        $newData = array();

        foreach ($oldData as $name => $config) {
            $newData[$name] = array(
                'enabled'   => $config['enabled'],
                'name'      => $name,
                'legend'    => '', // TODO: load legend from DCA/attributes table
                'tl_class'  => '', // TODO: load tl_class from DCA/attributes table
                'mandatory' => '', // TODO: load mandatory-ness from DCA/attributes table
                'position'  => $config['position']
            );
        }

        return $newData;
    }
}
