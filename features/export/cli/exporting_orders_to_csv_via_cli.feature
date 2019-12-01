@managing_orders
Feature: Exporting orders to csv-file
    In order to have my orders exported to an external target
    As a Developer
    I want to be able to export order data to csv file from the commandline

    Background:
        Given the store operates on a single channel in "United States"
        And the store ships everywhere for free
        And the store allows paying offline
        And the store has a product "Sylius T-Shirt"
        And this product has "Red XL" variant priced at "$40"
        And 4 customers have fulfilled 4 orders placed for total of "$5241.00"
        And I have a working command-line interface

    @cli_importer_exporter
    Scenario: Exporting orders to csv-file
        When I export "order" data as "csv" to the file "orders_export.csv" with the cli-command
        Then I should see "Exported" in the output
