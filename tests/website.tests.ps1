Describe 'Teknofire' {

    It 'Serves pages over http' {
        Invoke-WebRequest -Uri 'http://victorious-grass-0d2cc4603.4.azurestaticapps.net' -UseBasicParsing |
		Select-Object -ExpandProperty StatusCode |
		Should Be 200
    }

    It 'Serves pages over https' {
        Invoke-WebRequest -Uri 'https://victorious-grass-0d2cc4603.4.azurestaticapps.net' -UseBasicParsing |
		Select-Object -ExpandProperty StatusCode |
		Should Be 200
    }
}


$PageLinks = @(
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/aboutus.html',
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/career.html',
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/certification.html',
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/chilled_water_detail.html',
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/clients.html',
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/contact.html',
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/fire_alarm_detail.html'
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/fire_fighting_detail.html',
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/index.html',
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/projects.html',
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/solution.html',
    'https://victorious-grass-0d2cc4603.4.azurestaticapps.net/water_mist_detail.html'
)

Describe 'All Site Pages' {

    $PageLinks | ForEach-Object {

        It "$_ is reachable" {

            Invoke-WebRequest -uri $_ -UseBasicParsing |
            Select-Object -ExpandProperty StatusCode |
            Should Be 200
        }
    }
}