<?php

return array(
    'base' => array(
        'title'             => 'Isotope 2 – Migrationstool',
        'welcome'           => 'Willkommen',
        'configuration'     => 'Konfiguration',
        'execution'         => 'Durchführung',
        'summary'           => 'Zusammenfassung',
    ),
    'error' => array(
        'headline'       => 'Fehler in der Applikation',
        'contao'         => 'Deine Contao-Installation konnte nicht gefunden werden. Bitte stelle sicher, dass das Migrationstool im Wurzelverzeichnis deiner Contao-Installation liegt und dass die localconfig.php in "system/config" liegt.',
        'database'       => 'Die Verbindung zur Datenbank konnte nicht hergestellt werden. Das bedeutet, die localconfig.php wurde gefunden, aber die Zugangsdaten sind entweder nicht vorhanden oder fehlerhaft. Stelle sicher, dass deine Contao-Installation lauffähig ist.',
        'installTool'    => 'Das Contao Install-Tool öffnen',
        'tableFound'     => 'Die Tabelle "%table%" darf NICHT in der Datenbank existieren.',
        'tableNotFound'  => 'Die Tabelle "%table%" wurde nicht in der Datenbank gefunden.',
        'columnFound'    => 'Die Spalte "%column%" darf NICHT in der Tabelle "%table%" existieren.',
        'columnNotFound' => 'Die Spalte "%column%" wurde nicht in der Tabelle "%table%" gefunden.',
        'extensionFound' => 'Du musst die Extension "%extension%" löschen.'
    ),
    'confirm' => array(
        'configfree' => 'Für diesen Migrationsschritt ist keine Konfiguration nötig.',
        'title'      => 'Bestätigung',
        'checkbox'   => 'Ich verstehe und bin einverstanden'
    ),
    'help' => array(
        'intro'        => 'Brauchst du Hilfe?',
        'community'    => 'Contao Community Forum',
        'professional' => 'Professionellen Support',
    ),
    'index' => array(
        'headline'      => 'Willkommen zum Isotope 2 Migrationstool',
        'intro'         => 'Dieses Tool wird deine Isotope 1.4 Daten in das Format von Isotope 2 transformieren. Bitte lies aufmerksam weiter, bevor du weiterfährst.',
        'start'         => 'Migration starten',
        'prepare_headline' => 'Die Contao-Installation vorbereiten',
        'prepare_description' => 'Wir werden dich Schritt für Schritt durch den Migrationsvorgang begleiten. Doch zuerst, stelle sicher, dass deine Installation unseren Erwartungen entspricht. Das Migrationstool wird nicht funktionieren, wenn die Datenbank nicht korrekt vorbereitet wurde.',
        'prepare_step1' => 'Deine Installation muss auf Isotope v1.4.8 aktualisiert werden. Wenn du eine ältere Version im Einsatz hast, musst du zuerst auf v1.4.8 aktualisieren. Dadurch werden automatisch ältere v0.2/v1.3 Datenbanken aktualisiert.',
        'prepare_step2' => 'Wenn du einen mehrsprachigen Shop betreibst, musst du die <i>isotope_multilingual</i> Erweiterung löschen. Die Funktionalität ist in Isotope 2 bereits vorhanden und deine Daten werden automatisch migriert.',
        'prepare_step3' => 'Aktualisiere auf Contao Version 3.3. Eine Migration auf 3.2 ist im Moment nicht möglich. Dazu gibt es zwei Wege:',
        'prepare_step4' => 'Aktualisiere die Datenbank mit dem Contao Install-Tool. Du solltest dich im abgesicherten Modus befinden, so dass alle vorgeschlagenen Änderungen an der Datenbank ausgeführt werden können.',
        'prepare_liveupdate' => 'Mit <a href="http://www.inetrobots.com/shop/product_info.php?info=p12_contao-live-update-id.html&language=de" target="_blank">dem Live-Update-Service</a>, welcher alle Änderungen vornimmt (empfohlen).',
        'prepare_manual' => 'Manuell, in dem du dem <a href="https://contao.org/de/manual/3.3/installation.html#manuelles-update" target="_blank">entsprechenden Handbuch-Abschnitt</a> folgst.',
        'prepare_warning' => 'Folgst du dieser Anleitung nicht, so wird die Datenbank nicht für die Migration aufbereitet sein und der Konfigurationsschritt wird entsprechende Fehler melden.',
        'info_headline' => 'Was du wissen solltest',
        'info_part1' => 'Das Migrationstool wird die Daten in der Datenbank von Isotope Version 1.4.8 auf Version 2 aktualisieren. Es wird KEINE Dateien verändern oder Templates anpassen. Viele Templates haben in Isotope 2 Veränderungen erfahren und deine Anpassungen werden nicht mehr funktionieren. Es ist naheliegend, dass du bei deinen Template-Anpassungen bei Null anfangen musst.',
        'info_part2' => 'Aufrund von API-Änderungen gehen wir davon aus, dass ALLE existierenden Erweiterungen zu Isotope 1.4 nicht mehr mit der Version 2 funktionieren werden. Solltest du irgendwelche Erweiterungen zu Isotope installiert haben, prüfe die Verfügbarkeit von Updates oder kontaktiere die Entwickler falls notwendig. Wir werden versuchen keine Drittanbieter-Daten zu zerstören.',
        'thanks_headline' => 'Vielen Dank!',
        'thanks_description' => 'Die Entwicklung dieses Migrationstools wäre nicht möglich gewesen ohne die Community. Vielen Dank unseren Fundraising-Spendern:<br>Kim Wormer, Monique Hahnefeld, Websache, Cyrill Weiss, Karlheinz Büscher, Holger Neuner, Mingel2k',  // TODO: Update list of supporters!
    ),
    'config' => array(
        'back'          => 'Zurück',
        'continue'      => 'Weiter',
        'save'          => 'Speichern',
        'saveContinue'  => 'Speichern & weiter',
        'start'         => 'Konfiguration starten',
    ),
    'config_intro' => array(
        'headline'           => 'Migration konfigurieren',
        'description'        => 'Erklär uns deine Installation, damit wir deine Datenbank migrieren können.',
        'step_headline'      => 'Schritt für Schritt',
        'step_description'   => 'Das Migrationstool ist in mehrere Schritte aufgeteilt. Jeder Schritt kümmert sich um einen kleinen Teil der Applikation. Du kannst die Migrationsschritte in der Navigations links sehen.',
        'step_list'          => 'Jeder Schritt kann drei verschiedene Status einnehmen:',
        'grey'               => 'Grau, wenn Angaben deinerseits benötigt werden',
        'green'              => 'Grün, wenn alles in Ordnung ist',
        'red'                => 'Rot, wenn etwas nicht in Ordnung ist',
        'red'                => 'Rot, wenn etwas nicht in Ordnung ist',
        'secure_headline'    => 'Mach dir keine Sorgen',
        'secure_description' => 'Wir ändern während der Konfigurations nichts an deiner Datenbank. Deine Angaben werden in der Browser-Session gespeichert. Die Migration selbst wird erst ausgeführt, wenn alle Schritte grün sind.',
    ),
    'execute' => array(
        'headline'          => 'Achtung, fertig, los!',
        'intro'             => 'Das ist der letzte Schritt vor der Migration. Bitte lese vorsichtig, bevor du sie durchführst.', // TODO: write a better intro
        'back'              => 'Zurück',
        'cancel'            => 'Abbrechen',
        'cancel_confirm'    => 'Bist du dir sicher, dass du abbrechen willst? Deine Konfiguration wird gelöscht!',
        'continue'          => 'Migration ausführen',
        'error_headline'    => 'Immer mit der Ruhe!',
        'error_description' => 'Scheint als wärst du noch nicht bereit für die Migration. Bitte lies das Intro durch und konfiguriere alle notwendigen Schritte.',
        'error_button'      => 'Erneut starten',
        'success_headline' => 'Konfiguration erfolgreich',
        'success_description' => 'Du hast alle Fragen beantwortet und das Migrationstool erfolgreich konfiguriert.',
        'backup_headline' => 'Hast du ein Backup angelegt?',
        'backup_description' => 'Beachte, dass wir nicht für deine Daten verantwortlich sind. Das ist der Wortlaut der LGP Lizenz:',
        'lgpl' => 'This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the <a href="https://www.gnu.org/licenses/lgpl.html" target="_blank">GNU Lesser General Public License</a> for more details.',
    ),
    'service' => array(
        'address_book' => array(
            'service_name'        => 'Adressbuch',
            'service_description' => 'Migriert das Adressbuch'
        ),
        'attribute' => array(
            'service_name'        => 'Produktattribute',
            'service_description' => 'Migriert die Produktattribute der Shopkonfiguration',
            'mm_title'       => 'Medienmanager-Attribute',
            'mm_explain'     => 'Deine Installation enthält die folgenden Attribute vom Typ "Medien-Manager".',
            'mm_description' => 'In Isotope 1.4 war es möglich, eigene Galerie-Klassen für jedes Attribut zu definieren. Dies ist in Isotope 2 nicht mehr möglich, da Galerien neu im Backend konfiguriert werden. Technisch ist es durch Anpassungen an Templates immer noch möglich, aber jemand müsste <a href="https://github.com/isotope/docs/issues/14" target="_blank">es dokumentieren</a>…',
            'list'           => '%name% (Datenbankname "%field_name%")',
            'confirmation'   => 'Bitte bestätige, dass du das Obenstehende gelesen hast. Es liegt in deiner Verantwortung, die Templates anzupassen, wenn du Galerie-Klassen benötigst.',
        ),
        'download' => array(
            'service_name'        => 'Downloads',
            'service_description' => 'Migriert die Produktedownloads und aktualisiert Bestellungen mit Downloads.',
            'titleAndDescription' => 'Die Datenbankspalten tl_iso_download.title und tl_iso_download.description können nicht automatisch migriert werden. Sie beinhalten den Titel und die Beschreibung eines Downloads (vorausgesetzt du hast diese erfasst). In Contao 3+ kannst du Metadaten von Dateien in der Dateiverwaltung direkt erfassen, folglich muss Isotope eCommerce nicht noch weitere Erfassungsmöglichkeiten dafür bieten. Da das Migrationstool nicht automatisch erkennen kann, in welcher Sprache du die Daten in Isotope 1.4 erfasst hattest (und möglicherweise übersetzt hattest), wird es die Daten nicht verändern! Stell sicher, dass du die Spalten tl_iso_download.description und tl_iso_download.title nicht (!!) löschst, bevor du die Daten manuell migriert hast!'
        ),
        'frontend_module' => array(
            'service_name'        => 'Frontend-Module',
            'service_description' => 'Migriert die Frontend-Module.',
            'xhtml_title'       => 'XHTML Templates',
            'xhtml_explain'     => 'Die folgenden Seitenlayouts nutzen XHTML Templates. XHTML Templates werden vom Isotope 2 Core nicht unterstützt.',
            'xhtml_description' => 'Entweder du änderst deine Seitenlayouts auf HTML5 Templates und passt diese alle an (empfohlen) oder du kopierst alle Isotope Templates und passt die Dateiendungen an.',
            'confirmation'      => 'Bitte bestätige, dass du das Obenstehende gelesen hast. Es liegt in deiner Verantwortung, die Seitenlayouts anzupassen oder die XHTML Templates anzulegen.',
            'templates'         => 'Das Migrationstool hat die Templates "iso_cart_full" zu "iso_collection_default" und "iso_cart_mini" zu "iso_collection_mini" migriert. Allerdings kann es keine Logik migrieren, welche du in deine Templates eingebaut hast. Du wirst prüfen jedes einzelne (!) Template prüfen müssen!'
        ),
        'gallery' => array(
            'service_name'        => 'Galerien',
            'service_description' => 'Generiert Galerien auf Basis von alten Shopkonfigurationen.',
            'gallery_empty' => 'Die Galerie-Konfiguration is leer.',
            'missing_name' => 'Du musst für jede Galerie einen Namen eingeben.',
            'missing_config' => 'Jede Galerie muss über eine Haupt- und eine Galeriebild-Konfiguration verfügen.',
            'list_name' => 'Liste',
            'reader_name' => 'Leser',
            'gallery_legend' => 'Galerien konfigurieren',
            'gallery_intro' => 'Bitte konfiguriere deine neuen Galerien basierend auf den Bildgrössen in der Shopkonfiguration von Isotope 1.x',
            // @todo Andy has to translate this
            'gallery_description' => <<<'HTML'
<p class="explain">In Isotope 2 wurde die Bildgrössen-Konfiguration in eigene Galerie-Konfigurationen ausgelagert. Jede Galerie-Konfiguration beinhaltet
    Informationen über die Bildgrössen und Link-Aktionen (bspw. Link auf das Produkt oder Lightbox).</p>
<p class="explain">The default configuration of Isotope 1.x contained four different image sizes: <i>gallery</i>, <i>thumbnail</i>, <i>medium</i> and <i>large</i>.<br>
If you followed these, you should choose <i>thumbnail</i> for both main and gallery image of the list gallery, and
setup the reader gallery like this: Main Image Size = <i>medium</i>, Gallery Size = <i>gallery</i>, Lightbox Size = <i>large</i>.</p>
</p>
HTML
            ,
            'gallery_row_id' => 'ID',
            'gallery_row_name' => 'Name',
            'gallery_row_main' => 'Hauptbildgrösse',
            'gallery_row_gallery' => 'Galerie-Grösse',
            'gallery_row_lightbox' => 'Lightbox-Grösse',
            'gallery_default' => 'Galerie #:id',
            'gallery_lightbox_blank' => 'Nichts (für Listen-Galerien)',
            'gallery_delete_title' => 'Galerie löschen',
            'gallery_add_title' => 'Eine weitere Galerie-Konfiguration anlegen',
            'gallery_add_label' => 'Galerie hinzufügen',
            'productType_missing_config' => 'Bitte weise eine Listen- sowie eine Leser-Galerie zu jedem Produkttyp zu',
            'productType_legend' => 'Produkttypen konfigurieren',
            'productType_intro' => 'Jeder Produkttyp muss eine Galerie-Konfiguration zugewiesen haben.',
            'productType_description' => <<<'HTML'
<p class="explain">Hier musst du den Produkttypen die Galerie-Konfigurationen zuweisen. Jeder Produkttyp hat eine Galerie
für die Produktliste sowie den Produktleser. Sie können identisch sein, aber du möchtest möglicherweise eine Lightbox im Leser,
aber einen Link auf die Detailansicht in der Produktliste. Nach der Migration kannst du übrigens in jedem Frontend-Modul die Galerie-Konfiguration noch einmal überschreiben.</p>
HTML
            ,
            'productType_row_id' => 'ID',
            'productType_row_name' => 'Name',
            'productType_row_list' => 'Listen-Galerie',
            'productType_row_reader' => 'Leser-Galerie',
        ),
        'mail_template' => array(
            'service_name'        => 'Mail Templates',
            'service_description' => 'Migrates mail templates to notification center.',
            'gateway_legend' => 'E-Mail Gateway',
            'gateway_intro'  => 'Please select one of the available email gateways from notification center or select to create a new one for mail template migration.',
            'gateway_new'    => 'Create a new e-mail gateway',
            'gateway_db'     => 'Gateways from your database',
            'orderstatus'    => 'Order status "%name%"',
            'checkoutmodule' => 'Checkout module "%name%"',
            'gateway_label'  => 'E-Mail Gateway (from Isotope Migration)'
        ),
        'payment_method' => array(
            'service_name'        => 'Payment Methods',
            'service_description' => 'Migrates payment methods.',
            'name'                => '%name% (Type "%type%")',
            'old_title'           => 'Old payment methods',
            'old_explain'         => 'The following payment methods are no longer supported in Isotope 2 (core):',
            'old_description'     => 'We won\'t touch the data, so maybe you will find a third-party extension or you can contact a developer to fix this for you.',
            'unknown_title'       => 'Unknown payment methods',
            'unknown_explain'     => 'The following payment methods appear to be from third-party extensions:',
            'unknown_description' => 'We can\'t tell if they work in Isotope 2, nor are we able to migrate their data. We won\'t touch them though, so if you\'re lucky a third-party developer might provide an upgrade option.',
            'confirmation'        => 'Please confirm that you have read the above. It is your responsibility to not delete any data of the old/unsuppported payment methods if you need them in the future.'
        ),
        'product_collection' => array(
            'service_name'        => 'Product collections',
            'service_description' => 'Migrates order information',
            'legend' => 'Surcharge types',
            'intro' => 'Please tell us of what type the existing surcharges are.',
            'description' => <<<'HTML'
<p class="explain">Each order can have unlimited surcharges in Isotope. This can be a payment surcharge, a shipping surcharge or anything similar.
Isotope 2 introduced surcharge types so developer can find out what each surcharge is.
Unfortunately, it's not possible to tell automatically, so you will need to configure this.</p>
<p class="explain">Most of the time you can simply check the label and it will become obvious to you what the surcharge is.
If you used third party extensions that added their own surcharges, please aks the developer what type they need for Isotope 2.
You can then use the "Custom" option and manually enter the value.</p>
HTML
            ,
            'label' => 'Label',
            'type' => 'Type',
            'surcharges_empty' => 'Surcharges configuration is empty.',
            'surcharge_type_missing' => 'You must select a type for each surcharge.',
        ),
        'product_data' => array(
            'service_name'        => 'Product data',
            'service_description' => 'Migrates product data.'
        ),
        'product_type' => array(
            'service_name'        => 'Product type',
            'service_description' => 'Migrates product types'
        ),
        'related_product' => array(
            'service_name'        => 'Related Products',
            'service_description' => 'Migrates related products and their categories.'
        ),
        'shipping_method' => array(
            'service_name'        => 'Shipping Methods',
            'service_description' => 'Migrates shipping methods.',
            'name'                => '%name% (Type "%type%")',
            'old_title'           => 'Old shipping methods',
            'old_explain'         => 'The following shipping methods are no longer supported in Isotope 2 (core):',
            'old_description'     => 'We won\'t touch the data, so maybe you will find a third-party extension or you can contact a developer to fix this for you.',
            'unknown_title'       => 'Unknown shipping methods',
            'unknown_explain'     => 'The following shipping methods appear to be from third-party extensions:',
            'unknown_description' => 'We can\'t tell if they work in Isotope 2, nor are we able to migrate their data. We won\'t touch them though, so if you\'re lucky a third-party developer might provide an upgrade option.',
            'confirmation'        => 'Please confirm that you have read the above. It is your responsibility to not delete any data of the
            old/unsuppported shipping methods if you need them in the future.'
        ),
        'shop_config' => array(
            'service_name'        => 'Shop Configuration',
            'service_description' => 'Migrates shop configuration.'
        ),
        'translation' => array(
            'service_name'        => 'Translations',
            'service_description' => 'Migrates translation labels.'
        ),
    )
);
