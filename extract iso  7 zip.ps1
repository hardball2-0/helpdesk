Get-ChildItem "path" + file.iso -recurse | %{

    if($_.Name -match "file.iso")
    {
        $parent="$(Split-Path $_.FullName -Parent)";
        write-host "Extracting $($_.FullName) to $parent"

        $arguments=@("x", "`"$($_.FullName)`"", "-o`"$($parent)`"");
        start-process -FilePath "`"C:\Program Files\7-Zip\7z.exe`"" -ArgumentList $arguments -wait -PassThru;
    }
}