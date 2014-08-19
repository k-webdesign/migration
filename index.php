<?php

/**
 * Isotope eCommerce Migration Tool
 *
 * Copyright (C) 2014 terminal42 gmbh
 *
 * @link       http://isotopeecommerce.org
 * @license    http://opensource.org/licenses/lgpl-3.0.html
 */

require_once __DIR__ . '/vendor/autoload.php';

$app = new Silex\Application();

//ini_set('error_reporting', E_ALL & ~E_NOTICE);
$app['debug'] = true;

$app->register(new \Isotope\Migration\Provider\MigrationServiceProvider());

// Display a nice error page in production mode
if (!$app['debug']) {
    $app->error(function (\Exception $e, $code) use ($app) {
        return new Symfony\Component\HttpFoundation\Response($app['twig']->render('error.twig', array(
            'base_path' => $app['request']->getBasePath(),
            'error' => $e->getMessage()
        )));
    });
}

$app->get('/', 'migration.controller:indexAction');
$app->get('/config/', 'migration.controller:configAction');
$app->match('/config/{slug}', 'migration.controller:configAction');
$app->get('/execute', 'migration.controller:executeAction');

$app->run();