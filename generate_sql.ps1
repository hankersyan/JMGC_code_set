$index = 1000
foreach ($prop in $codes.PSObject.Properties) {
    $code = $prop.Name
    $codeName = $prop.Value.name
    Write-Output "(`'$code`', `'aged$($codeName)`', `'$code`', `'$code`', $index, 'f9014b9839944d69b8ca55438e56f78d');"
    $index += 10
    $codeValues = $prop.Value.values
    foreach ($subprop in $codeValues.PSObject.Properties) {
        $subcode = $subprop.Name
        $subName = $subprop.Value
        Write-Output "(`'$($code)_$($subcode)`', `'$subName`', `'$($code)_$($subcode)`', `'$subcode`', $subcode, `'$code`');"
    }
}