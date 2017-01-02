<#
Get-PowerShellAliasesTable.ps1
#>


<#

        # One-liners listing the PowerShell aliases
        Get-Alias | fl *
        Get-Command -CommandType alias | fl *
        Get-Alias | Select Name,Definition,DisplayName,HelpUri | Format-Table -AutoSize
        Get-Alias | Select-Object Name,Definition,DisplayName,HelpUri,Version,ResolvedCommand,@{Label="Alias";Expression={($_.Name)}} | Out-GridView

        # Get a list of aliases which work with PowerShell 2.0
        Get-Alias | Where-Object { $_.Version.Major -lt 3 }

        # Get a list of aliases which came with PowerShell 3.0
        Get-Alias | Where-Object { $_.Version.Major -ge 3 }

        # Get the full cmdlet name of an alias called ii
        Get-Alias ii

        # List all aliases of Get-ChildItem
        Get-Alias -Definition Get-ChildItem

#>


$computer = $env:COMPUTERNAME
$path = "$env:temp"


# A function for creating alternating rows in HTML documents                                  # Credit: Martin Pugh: "Get-FolderSizes"
Function Set-AlternatingRows {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory=$true,ValueFromPipeline=$true)]
        [object[]]$lines,

        [Parameter(Mandatory=$true)]
        [string]$CSS_even_class,

        [Parameter(Mandatory=$true)]
        [string]$CSS_odd_class
    )
    Begin {
        $class_name = $CSS_even_class
    } # Begin

    Process {
        ForEach ($line in $lines) {

            $line = $line.Replace("<tr>","<tr class=""$class_name"">")

            If ($class_name -eq $CSS_even_class) {
                $class_name = $CSS_odd_class
            } Else {
                $class_name = $CSS_even_class
            } # Else

            Return $line

        } # ForEach
    } # Process

} # function (Set-AlternatingRows)




# Display PowerShell aliases in a pop-up window and write the data to a CSV-file
$aliases = Get-Alias | Select-Object Name,Definition,DisplayName,HelpUri,Version,ResolvedCommand,@{Label="Alias";Expression={($_.Name)}}
$aliases | Out-GridView
$aliases | Export-Csv "$path\powershell_aliases.csv" -Delimiter ';' -NoTypeInformation -Encoding UTF8




# Create a PowerShell aliases HTML-file                                                       # Credit: Martin Pugh: "Get-FolderSizes"

# Define the HTML header and pre & post content for the table data
# In the CSS style section .even and .odd apply to the custom function Set-AlternatingRows (Outlook ignores "nth-child" definitions in CSS).
# So after defining the custom function Set-AlternatingRows the .odd and .even are specified in the CSS style section.
# After ConvertTo-Html has outputted to a pipeline Set-AlternatingRows is then allowed to change lines (from "<tr>" to "<tr class='$class_name'>") in the source code at hand.
# To improve the formatting of HTML code in Visual Studio Code, please press Shift + Alt + F and the selected area will be reformatted in a HTML-file.


$header = @"
<style>
    table {
        border-width: 1px;
        border-style: solid;
        border-color: black;
        border-collapse: collapse;
    }

    th {
        border-width: 1px;
        padding: 3px;
        border-style: solid;
        border-color: black;
        background-color: #6495ED;
    }

    td {
        border-width: 1px;
        padding: 3px;
        border-style: solid;
        border-color: black;
    }

    .odd {
        background-color: #ffffff;
    }

    .even {
        background-color: #dddddd;
    }
</style>
<title>
    PowerShell Aliases
</title>
"@


$pre = "<h1>PowerShell Aliases</h1><h3>Listing $($aliases_unescaped.Count) PowerShell aliases</h3>"
$post = "<h3>Total: $($aliases_unescaped.Count) PowerShell aliases</h3><p>Generated: $(Get-Date -Format g)<br />Computer: $computer</p>"


# Create the PowerShell aliases table (with clickable links)
$aliases_html = Get-Alias | Select-Object Name,Definition,DisplayName,@{Label="HelpUri";Expression={[string]'<a href="' + ($_.HelpUri) + '">' + ($_.HelpUri) + '</a>'}},Version,ResolvedCommand,@{Label="Alias";Expression={($_.Name)}}
$aliases_escaped = $aliases_html | ConvertTo-Html -PreContent $pre -PostContent $post -Head $header -As Table | Set-AlternatingRows -CSS_even_class even -CSS_odd_class odd
$aliases_unescaped = $aliases_escaped.Replace('&lt;a href=&quot;','<a href="').Replace('&quot;&gt;','">').Replace('&lt;/a&gt;','</a>').Replace('<a href=""></a>','')


# Save the PowerShell aliases table to a HTML-file
$aliases_unescaped | Out-File -Encoding UTF8 "$path\powershell_aliases.html"


# Open the PowerShell aliases HTML-file in the default browser
# Invoke-Expression "$path\powershell_aliases.html"
Start-Process -FilePath "$path\powershell_aliases.html"




# [End of Line]


<#


   _____
  / ____|
 | (___   ___  _   _ _ __ ___ ___
  \___ \ / _ \| | | | '__/ __/ _ \
  ____) | (_) | |_| | | | (_|  __/
 |_____/ \___/ \__,_|_|  \___\___|


https://community.spiceworks.com/scripts/show/1738-get-foldersizes                            # Martin Pugh: "Get-FolderSizes"


  _    _      _
 | |  | |    | |
 | |__| | ___| |_ __
 |  __  |/ _ \ | '_ \
 | |  | |  __/ | |_) |
 |_|  |_|\___|_| .__/
               | |
               |_|
#>

<#

.SYNOPSIS
There is an alias for that... Retrieves PowerShell aliases from the local computer
and presents the info in various table formatted formats.

.DESCRIPTION
Get-PowerShellAliasesTable uses the Get-Alias cmdlet to gather the data and writes
the info to a CSV- and a HTML-file and displays the output in a pop-up window
(Out-GridView) and opens the HTML-file in the default browser.

.OUTPUTS
Displays PowerShell aliases in a pop-up window "$aliases" (Out-GridView):


        Name                        Description
        ----                        -----------
        $aliases                    Displays a list of PowerShell aliases


...and writes that data to a CSV- and a HTML-file as described below:

$env:temp\powershell_aliases.csv        CSV     powershell_aliases.csv
$env:temp\powershell_aliases.html       HTML    powershell_aliases.html

And opens the HTML-file in the default browser.

.NOTES
PowerShell Aliases

    Name    Definition                      HelpUri                                         Version
    ----    ----------                      -------                                         -------
    %       ForEach-Object                  http://go.microsoft.com/fwlink/?LinkID=113300
    ?       Where-Object                    http://go.microsoft.com/fwlink/?LinkID=113423
    ac      Add-Content                     http://go.microsoft.com/fwlink/?LinkID=113278
    asnp    Add-PSSnapIn                    http://go.microsoft.com/fwlink/?LinkID=113281
    cat     Get-Content                     http://go.microsoft.com/fwlink/?LinkID=113310
    cd      Set-Location                    http://go.microsoft.com/fwlink/?LinkID=113397
    CFS     ConvertFrom-String              http://go.microsoft.com/fwlink/?LinkID=507579   3.1.0.0
    chdir   Set-Location                    http://go.microsoft.com/fwlink/?LinkID=113397
    clc     Clear-Content                   http://go.microsoft.com/fwlink/?LinkID=113282
    clear   Clear-Host                      http://go.microsoft.com/fwlink/?LinkID=225747
    clhy    Clear-History                   http://go.microsoft.com/fwlink/?LinkID=135199
    cli     Clear-Item                      http://go.microsoft.com/fwlink/?LinkID=113283
    clp     Clear-ItemProperty              http://go.microsoft.com/fwlink/?LinkID=113284
    cls     Clear-Host                      http://go.microsoft.com/fwlink/?LinkID=225747
    clv     Clear-Variable                  http://go.microsoft.com/fwlink/?LinkID=113285
    cnsn    Connect-PSSession               http://go.microsoft.com/fwlink/?LinkID=210604
    compare Compare-Object                  http://go.microsoft.com/fwlink/?LinkID=113286
    copy    Copy-Item                       http://go.microsoft.com/fwlink/?LinkID=113292
    cp      Copy-Item                       http://go.microsoft.com/fwlink/?LinkID=113292
    cpi     Copy-Item                       http://go.microsoft.com/fwlink/?LinkID=113292
    cpp     Copy-ItemProperty               http://go.microsoft.com/fwlink/?LinkID=113293
    curl    Invoke-WebRequest               http://go.microsoft.com/fwlink/?LinkID=217035
    cvpa    Convert-Path                    http://go.microsoft.com/fwlink/?LinkID=113289
    dbp     Disable-PSBreakpoint            http://go.microsoft.com/fwlink/?LinkID=113294
    del     Remove-Item                     http://go.microsoft.com/fwlink/?LinkID=113373
    diff    Compare-Object                  http://go.microsoft.com/fwlink/?LinkID=113286
    dir     Get-ChildItem                   http://go.microsoft.com/fwlink/?LinkID=113308
    dnsn    Disconnect-PSSession            http://go.microsoft.com/fwlink/?LinkID=210605
    ebp     Enable-PSBreakpoint             http://go.microsoft.com/fwlink/?LinkID=113295
    echo    Write-Output                    http://go.microsoft.com/fwlink/?LinkID=113427
    epal    Export-Alias                    http://go.microsoft.com/fwlink/?LinkID=113296
    epcsv   Export-Csv                      http://go.microsoft.com/fwlink/?LinkID=113299
    epsn    Export-PSSession                http://go.microsoft.com/fwlink/?LinkID=135213
    erase   Remove-Item                     http://go.microsoft.com/fwlink/?LinkID=113373
    etsn    Enter-PSSession                 http://go.microsoft.com/fwlink/?LinkID=135210
    exsn    Exit-PSSession                  http://go.microsoft.com/fwlink/?LinkID=135212
    fc      Format-Custom                   http://go.microsoft.com/fwlink/?LinkID=113301
    fhx     Format-Hex                      http://go.microsoft.com/fwlink/?LinkId=526919   3.1.0.0
    fl      Format-List                     http://go.microsoft.com/fwlink/?LinkID=113302
    foreach ForEach-Object                  http://go.microsoft.com/fwlink/?LinkID=113300
    ft      Format-Table                    http://go.microsoft.com/fwlink/?LinkID=113303
    fw      Format-Wide                     http://go.microsoft.com/fwlink/?LinkID=113304
    gal     Get-Alias                       http://go.microsoft.com/fwlink/?LinkID=113306
    gbp     Get-PSBreakpoint                http://go.microsoft.com/fwlink/?LinkID=113325
    gc      Get-Content                     http://go.microsoft.com/fwlink/?LinkID=113310
    gcb     Get-Clipboard                   http://go.microsoft.com/fwlink/?LinkId=526219   3.1.0.0
    gci     Get-ChildItem                   http://go.microsoft.com/fwlink/?LinkID=113308
    gcm     Get-Command                     http://go.microsoft.com/fwlink/?LinkID=113309
    gcs     Get-PSCallStack                 http://go.microsoft.com/fwlink/?LinkID=113326
    gdr     Get-PSDrive                     http://go.microsoft.com/fwlink/?LinkID=113327
    ghy     Get-History                     http://go.microsoft.com/fwlink/?LinkID=113317
    gi      Get-Item                        http://go.microsoft.com/fwlink/?LinkID=113319
    gin     Get-ComputerInfo                http://go.microsoft.com/fwlink/?LinkId=799466   3.1.0.0
    gjb     Get-Job                         http://go.microsoft.com/fwlink/?LinkID=113328
    gl      Get-Location                    http://go.microsoft.com/fwlink/?LinkID=113321
    gm      Get-Member                      http://go.microsoft.com/fwlink/?LinkID=113322
    gmo     Get-Module                      http://go.microsoft.com/fwlink/?LinkID=141552
    gp      Get-ItemProperty                http://go.microsoft.com/fwlink/?LinkID=113320
    gps     Get-Process                     http://go.microsoft.com/fwlink/?LinkID=113324
    gpv     Get-ItemPropertyValue           http://go.microsoft.com/fwlink/?LinkId=389281
    group   Group-Object                    http://go.microsoft.com/fwlink/?LinkID=113338
    gsn     Get-PSSession                   http://go.microsoft.com/fwlink/?LinkID=135219
    gsnp    Get-PSSnapIn                    http://go.microsoft.com/fwlink/?LinkID=113330
    gsv     Get-Service                     http://go.microsoft.com/fwlink/?LinkID=113332
    gtz     Get-TimeZone                    http://go.microsoft.com/fwlink/?LinkId=799468   3.1.0.0
    gu      Get-Unique                      http://go.microsoft.com/fwlink/?LinkID=113335
    gv      Get-Variable                    http://go.microsoft.com/fwlink/?LinkID=113336
    gwmi    Get-WmiObject                   http://go.microsoft.com/fwlink/?LinkID=113337
    h       Get-History                     http://go.microsoft.com/fwlink/?LinkID=113317
    history Get-History                     http://go.microsoft.com/fwlink/?LinkID=113317
    icm     Invoke-Command                  http://go.microsoft.com/fwlink/?LinkID=135225
    iex     Invoke-Expression               http://go.microsoft.com/fwlink/?LinkID=113343
    ihy     Invoke-History                  http://go.microsoft.com/fwlink/?LinkID=113344
    ii      Invoke-Item                     http://go.microsoft.com/fwlink/?LinkID=113345
    ipal    Import-Alias                    http://go.microsoft.com/fwlink/?LinkID=113339
    ipcsv   Import-Csv                      http://go.microsoft.com/fwlink/?LinkID=113341
    ipmo    Import-Module                   http://go.microsoft.com/fwlink/?LinkID=141553
    ipsn    Import-PSSession                http://go.microsoft.com/fwlink/?LinkID=135221
    irm     Invoke-RestMethod               http://go.microsoft.com/fwlink/?LinkID=217034
    ise     powershell_ise.exe
    iwmi    Invoke-WMIMethod                http://go.microsoft.com/fwlink/?LinkID=113346
    iwr     Invoke-WebRequest               http://go.microsoft.com/fwlink/?LinkID=217035
    kill    Stop-Process                    http://go.microsoft.com/fwlink/?LinkID=113412
    lp      Out-Printer                     http://go.microsoft.com/fwlink/?LinkID=113367
    ls      Get-ChildItem                   http://go.microsoft.com/fwlink/?LinkID=113308
    man     help                            http://go.microsoft.com/fwlink/?LinkID=113316
    md      mkdir                           http://go.microsoft.com/fwlink/?LinkID=113353
    measure Measure-Object                  http://go.microsoft.com/fwlink/?LinkID=113349
    mi      Move-Item                       http://go.microsoft.com/fwlink/?LinkID=113350
    mount   New-PSDrive                     http://go.microsoft.com/fwlink/?LinkID=113357
    move    Move-Item                       http://go.microsoft.com/fwlink/?LinkID=113350
    mp      Move-ItemProperty               http://go.microsoft.com/fwlink/?LinkID=113351
    mv      Move-Item                       http://go.microsoft.com/fwlink/?LinkID=113350
    nal     New-Alias                       http://go.microsoft.com/fwlink/?LinkID=113352
    ndr     New-PSDrive                     http://go.microsoft.com/fwlink/?LinkID=113357
    ni      New-Item                        http://go.microsoft.com/fwlink/?LinkID=113353
    nmo     New-Module                      http://go.microsoft.com/fwlink/?LinkID=141554
    npssc   New-PSSessionConfigurationFile  http://go.microsoft.com/fwlink/?LinkID=217036
    nsn     New-PSSession                   http://go.microsoft.com/fwlink/?LinkID=135237
    nv      New-Variable                    http://go.microsoft.com/fwlink/?LinkID=113361
    ogv     Out-GridView                    http://go.microsoft.com/fwlink/?LinkID=113364
    oh      Out-Host                        http://go.microsoft.com/fwlink/?LinkID=113365
    popd    Pop-Location                    http://go.microsoft.com/fwlink/?LinkID=113369
    ps      Get-Process                     http://go.microsoft.com/fwlink/?LinkID=113324
    pushd   Push-Location                   http://go.microsoft.com/fwlink/?LinkID=113370
    pwd     Get-Location                    http://go.microsoft.com/fwlink/?LinkID=113321
    r       Invoke-History                  http://go.microsoft.com/fwlink/?LinkID=113344
    rbp     Remove-PSBreakpoint             http://go.microsoft.com/fwlink/?LinkID=113375
    rcjb    Receive-Job                     http://go.microsoft.com/fwlink/?LinkID=113372
    rcsn    Receive-PSSession               http://go.microsoft.com/fwlink/?LinkID=217037
    rd      Remove-Item                     http://go.microsoft.com/fwlink/?LinkID=113373
    rdr     Remove-PSDrive                  http://go.microsoft.com/fwlink/?LinkID=113376
    ren     Rename-Item                     http://go.microsoft.com/fwlink/?LinkID=113382
    ri      Remove-Item                     http://go.microsoft.com/fwlink/?LinkID=113373
    rjb     Remove-Job                      http://go.microsoft.com/fwlink/?LinkID=113377
    rm      Remove-Item                     http://go.microsoft.com/fwlink/?LinkID=113373
    rmdir   Remove-Item                     http://go.microsoft.com/fwlink/?LinkID=113373
    rmo     Remove-Module                   http://go.microsoft.com/fwlink/?LinkID=141556
    rni     Rename-Item                     http://go.microsoft.com/fwlink/?LinkID=113382
    rnp     Rename-ItemProperty             http://go.microsoft.com/fwlink/?LinkID=113383
    rp      Remove-ItemProperty             http://go.microsoft.com/fwlink/?LinkID=113374
    rsn     Remove-PSSession                http://go.microsoft.com/fwlink/?LinkID=135250
    rsnp    Remove-PSSnapin                 http://go.microsoft.com/fwlink/?LinkID=113378
    rujb    Resume-Job                      http://go.microsoft.com/fwlink/?LinkID=210611
    rv      Remove-Variable                 http://go.microsoft.com/fwlink/?LinkID=113380
    rwmi    Remove-WMIObject                http://go.microsoft.com/fwlink/?LinkID=113381
    rvpa    Resolve-Path                    http://go.microsoft.com/fwlink/?LinkID=113384
    sajb    Start-Job                       http://go.microsoft.com/fwlink/?LinkID=113405
    sal     Set-Alias                       http://go.microsoft.com/fwlink/?LinkID=113390
    saps    Start-Process                   http://go.microsoft.com/fwlink/?LinkID=135261
    sasv    Start-Service                   http://go.microsoft.com/fwlink/?LinkID=113406
    sbp     Set-PSBreakpoint                http://go.microsoft.com/fwlink/?LinkID=113449
    sc      Set-Content                     http://go.microsoft.com/fwlink/?LinkID=113392
    scb     Set-Clipboard                   http://go.microsoft.com/fwlink/?LinkId=526220   3.1.0.0
    select  Select-Object                   http://go.microsoft.com/fwlink/?LinkID=113387
    set     Set-Variable                    http://go.microsoft.com/fwlink/?LinkID=113401
    shcm    Show-Command                    http://go.microsoft.com/fwlink/?LinkID=217448
    si      Set-Item                        http://go.microsoft.com/fwlink/?LinkID=113395
    sl      Set-Location                    http://go.microsoft.com/fwlink/?LinkID=113397
    sleep   Start-Sleep                     http://go.microsoft.com/fwlink/?LinkID=113407
    sls     Select-String                   http://go.microsoft.com/fwlink/?LinkID=113388
    sort    Sort-Object                     http://go.microsoft.com/fwlink/?LinkID=113403
    sp      Set-ItemProperty                http://go.microsoft.com/fwlink/?LinkID=113396
    spjb    Stop-Job                        http://go.microsoft.com/fwlink/?LinkID=113413
    spps    Stop-Process                    http://go.microsoft.com/fwlink/?LinkID=113412
    spsv    Stop-Service                    http://go.microsoft.com/fwlink/?LinkID=113414
    start   Start-Process                   http://go.microsoft.com/fwlink/?LinkID=135261
    stz     Set-TimeZone                    http://go.microsoft.com/fwlink/?LinkId=799469   3.1.0.0
    sujb    Suspend-Job                     http://go.microsoft.com/fwlink/?LinkID=210613
    sv      Set-Variable                    http://go.microsoft.com/fwlink/?LinkID=113401
    swmi    Set-WMIInstance                 http://go.microsoft.com/fwlink/?LinkID=113402
    tee     Tee-Object                      http://go.microsoft.com/fwlink/?LinkID=113417
    trcm    Trace-Command                   http://go.microsoft.com/fwlink/?LinkID=113419
    type    Get-Content                     http://go.microsoft.com/fwlink/?LinkID=113310
    wget    Invoke-WebRequest               http://go.microsoft.com/fwlink/?LinkID=217035
    where   Where-Object                    http://go.microsoft.com/fwlink/?LinkID=113423
    wjb     Wait-Job                        http://go.microsoft.com/fwlink/?LinkID=113422
    write   Write-Output                    http://go.microsoft.com/fwlink/?LinkID=113427

    Source: https://msdn.microsoft.com/powershell/reference/5.1/microsoft.powershell.utility/get-alias

Extra aliases and special string output positioning/formatting characters and
formulas in PowerShell

        Alias                   Description
        -----                   -----------
        `                       Escape character: grave-accent (`) a.k.a. the backtick
        '                       Delimit a string: single quotation mark (')
        "                       Delimit a string: quotation mark (")
        `0                      Null
        `a                      Alert bell/beep
        `b                      Backspace
        `f                      Form feed (used with printer output)
        `n                      New line
        `r                      Carriage return
        `r`n                    Carriage return + New line
        `t                      Horizontal tab
        `v                      Vertical tab (used with printer output)
        &                       Execute string as command
        #                       Comment / Remark
        |                       Pipeline: Catch output of the command and pass it to another command
        .                       A period: Run a command script in the current shell
                                    or matches one instance of any character
                                    or accessing a non-static member of the class
        [class_name]::          Double colon: reference static member of a class. The class name must
                                    be enclosed in square brackets.
        +                       Add or addition of two arguments. Or a reference to a public nested class
        -                       Subtract
        /                       Divide
        ++                      Increment the numerical value on the left by one (and store the result)
        +=                      Increment value on the left by the amount on the right (and store the result)
        -=                      Decrease the value on the left by the amount on the right
        *=                      Multiply the value on the left by the amount on the right or
                                    for strings, duplicate the string on the left [amount_on_the_right] times
        /=                      Divide the value on the left by the amount on the right (and store the result)
        %                       Alias for ForEach-Object or remainder of division, same as Mod in VB.
        --%                     Stop parsing input (available since Powershell v3.0): allows to feed commands
                                     with special characters, without them being treated as such
        !                       Alias for -not
        ?                       Alias for Where-Object or a wildcard character,
                                    which matches zero or one instance of any character
        *                       Multiply. Or a wildcard character that matches zero or more characters
        $                       Dollar sign: Declare/use a variable
        $_                      The current pipeline object ('this' token)
        $variable = "value"     Define a variable with a value
        $$                      Last token of last command, does not refer to the whole command
        $^                      First token of last command, does not refer to the whole command
        $?                      Returns True or False value indicating whether previous command ended
                                    with an error. For some reason it does not catch all errors,
                                    but most of the time it works.
        $()                     Sub-expression operator inside double-quoted strings: Whatever is
                                    in the brackets should be evaluated first.
        ${}                     Declare or use a variable with non-standard characters in it
        $h = @{"key" = "value"} Declare a hash table $h with a key-value pair (semicolon as a separator)
        @()                     Declare an array (in which comma is used as a separator)
        @' ... '@               Multi-line string literal without embedded variables
        @" ... "@               Multi-line string literal with embedded variables
        0x                      Specify a number in hexadecimal form
        [ ]                     Indicates a range of characters (with - or ..) or a set
                                    of specified characters
        [type]                  Aside from type casting, it can be used to specify
                                    strongly typed variables

        Source: http://ss64.com/ps/ and http://ss64.com/ps/syntax-esc.html
        Source: http://ss64.com/ps/syntax-variables.html
        Source: http://www.neolisk.com/techblog/powershell-specialcharactersandtokens
        Source: https://msdn.microsoft.com/en-us/library/aa717088(v=vs.85).aspx
        Source: https://technet.microsoft.com/en-us/library/ee692803.aspx
        Source: https://technet.microsoft.com/en-us/library/2007.11.powershell.aspx

Please note that the files are created in a directory, which is specified with the
$path variable (at line 30). The $env:temp variable points to the current temp
folder. The default value of the $env:temp variable is
C:\Users\<username>\AppData\Local\Temp (i.e. each user account has their own
separate temp folder at path %USERPROFILE%\AppData\Local\Temp). To see the current
temp path, for instance a command

    [System.IO.Path]::GetTempPath()

may be used at the PowerShell prompt window [PS>]. To change the temp folder for instance
to C:\Temp, please, for example, follow the instructions at
http://www.eightforums.com/tutorials/23500-temporary-files-folder-change-location-windows.html

    Homepage:           https://github.com/auberginehill/get-powershell-aliases-table
    Short URL:          http://tinyurl.com/hbkyhu7
    Version:            1.0

.EXAMPLE
./Get-PowerShellAliasesTable
Run the script. Please notice to insert ./ or .\ before the script name.

.EXAMPLE
help ./Get-PowerShellAliasesTable -Full
Display the help file.

.EXAMPLE
Set-ExecutionPolicy remotesigned
This command is altering the Windows PowerShell rights to enable script execution for
the default (LocalMachine) scope. Windows PowerShell has to be run with elevated rights
(run as an administrator) to actually be able to change the script execution properties.
The default value of the default (LocalMachine) scope is "Set-ExecutionPolicy restricted".


    Parameters:

    Restricted      Does not load configuration files or run scripts. Restricted is the default
                    execution policy.

    AllSigned       Requires that all scripts and configuration files be signed by a trusted
                    publisher, including scripts that you write on the local computer.

    RemoteSigned    Requires that all scripts and configuration files downloaded from the Internet
                    be signed by a trusted publisher.

    Unrestricted    Loads all configuration files and runs all scripts. If you run an unsigned
                    script that was downloaded from the Internet, you are prompted for permission
                    before it runs.

    Bypass          Nothing is blocked and there are no warnings or prompts.

    Undefined       Removes the currently assigned execution policy from the current scope.
                    This parameter will not remove an execution policy that is set in a Group
                    Policy scope.


For more information, please type "Get-ExecutionPolicy -List", "help Set-ExecutionPolicy -Full",
"help about_Execution_Policies" or visit https://technet.microsoft.com/en-us/library/hh849812.aspx
or http://go.microsoft.com/fwlink/?LinkID=135170.

.EXAMPLE
New-Item -ItemType File -Path C:\Temp\Get-PowerShellAliasesTable.ps1
Creates an empty ps1-file to the C:\Temp directory. The New-Item cmdlet has an inherent -NoClobber mode
built into it, so that the procedure will halt, if overwriting (replacing the contents) of an existing
file is about to happen. Overwriting a file with the New-Item cmdlet requires using the Force. If the
path name includes space characters, please enclose the path name in quotation marks (single or double):

    New-Item -ItemType File -Path "C:\Folder Name\Get-PowerShellAliasesTable.ps1"

For more information, please type "help New-Item -Full".

.LINK

https://community.spiceworks.com/scripts/show/1738-get-foldersizes
http://ss64.com/ps/
https://technet.microsoft.com/en-us/library/ff730936.aspx
https://msdn.microsoft.com/powershell/reference/5.1/microsoft.powershell.utility/ConvertTo-Html
https://msdn.microsoft.com/powershell/reference/5.1/microsoft.powershell.core/about/about_aliases

#>
