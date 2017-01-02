<!-- Visual Studio Code: For a more comfortable reading experience, use the key combination Ctrl + Shift + V
     Visual Studio Code: To crop the tailing end space characters out, please use the key combination Ctrl + A Ctrl + K Ctrl + X (Formerly Ctrl + Shift + X)
     Visual Studio Code: To improve the formatting of HTML code, press Shift + Alt + F and the selected area will be reformatted in a html file.
     Visual Studio Code shortcuts: http://code.visualstudio.com/docs/customization/keybindings (or https://aka.ms/vscodekeybindings)
     Visual Studio Code shortcut PDF (Windows): https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf


   _____      _          _____                       _____ _          _ _          _ _                  _______    _     _
  / ____|    | |        |  __ \                     / ____| |        | | |   /\   | (_)                |__   __|  | |   | |
 | |  __  ___| |_ ______| |__) |____      _____ _ _| (___ | |__   ___| | |  /  \  | |_  __ _ ___  ___  ___| | __ _| |__ | | ___
 | | |_ |/ _ \ __|______|  ___/ _ \ \ /\ / / _ \ '__\___ \| '_ \ / _ \ | | / /\ \ | | |/ _` / __|/ _ \/ __| |/ _` | '_ \| |/ _ \
 | |__| |  __/ |_       | |  | (_) \ V  V /  __/ |  ____) | | | |  __/ | |/ ____ \| | | (_| \__ \  __/\__ \ | (_| | |_) | |  __/
  \_____|\___|\__|      |_|   \___/ \_/\_/ \___|_| |_____/|_| |_|\___|_|_/_/    \_\_|_|\__,_|___/\___||___/_|\__,_|_.__/|_|\___|                       -->


## Get-PowerShellAliasesTable.ps1

<table>
   <tr>
      <td style="padding:6px"><strong>OS:</strong></td>
      <td style="padding:6px">Windows</td>
   </tr>
   <tr>
      <td style="padding:6px"><strong>Type:</strong></td>
      <td style="padding:6px">A Windows PowerShell script</td>
   </tr>
   <tr>
      <td style="padding:6px"><strong>Language:</strong></td>
      <td style="padding:6px">Windows PowerShell</td>
   </tr>
   <tr>
      <td style="padding:6px"><strong>Description:</strong></td>
      <td style="padding:6px">Get-PowerShellAliasesTable uses the <code>Get-Alias</code> cmdlet to gather the data and writes the info to a CSV- and a HTML-file and displays the output in a pop-up window (Out-GridView) and opens the HTML-file in the default browser.</td>
   </tr>
   <tr>
      <td style="padding:6px"><strong>Homepage:</strong></td>
      <td style="padding:6px"><a href="https://github.com/auberginehill/get-powershell-aliases-table">https://github.com/auberginehill/get-powershell-aliases-table</a>
      <br />Short URL: <a href="http://tinyurl.com/hbkyhu7">http://tinyurl.com/hbkyhu7</a></td>
   </tr>
   <tr>
      <td style="padding:6px"><strong>Version:</strong></td>
      <td style="padding:6px">1.0</td>
   </tr>
   <tr>
        <td style="padding:6px"><strong>Sources:</strong></td>
        <td style="padding:6px">
            <table>
                <tr>
                    <td style="padding:6px">Emojis:</td>
                    <td style="padding:6px"><a href="https://github.com/auberginehill/emoji-table">Emoji Table</a></td>
                </tr>
                <tr>
                    <td style="padding:6px">Martin Pugh:</td>
                    <td style="padding:6px"><a href="https://community.spiceworks.com/scripts/show/1738-get-foldersizes">Get-FolderSizes</a></td>
                </tr>
            </table>
        </td>
   </tr>
   <tr>
      <td style="padding:6px"><strong>Downloads:</strong></td>
      <td style="padding:6px">For instance <a href="https://raw.githubusercontent.com/auberginehill/get-powershell-aliases-table/master/Get-PowerShellAliasesTable.ps1">Get-PowerShellAliasesTable.ps1</a>. Or <a href="https://github.com/auberginehill/get-powershell-aliases-table/archive/master.zip">everything as a .zip-file</a>.</td>
   </tr>
</table>




### Screenshot

<img class="screenshot" title="screenshot" alt="screenshot" height="100%" width="100%" src="https://raw.githubusercontent.com/auberginehill/get-powershell-aliases-table/master/Get-PowerShellAliasesTable.png">




### Outputs

<table>
    <tr>
        <th>:arrow_right:</th>
        <td style="padding:6px">
            <ul>
                <li>Displays PowerShell aliases in a pop-up window "<code>$aliases</code>" (Out-GridView):</li>
            </ul>
        </td>
    </tr>
    <tr>
        <th></th>
        <td style="padding:6px">
            <ul>
                <ol>
                    <p>
                        <table>
                            <tr>
                                <td style="padding:6px"><strong>Name</strong></td>
                                <td style="padding:6px"><strong>Description</strong></td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>$aliases</code></td>
                                <td style="padding:6px">Displays a list of PowerShell aliases</td>
                            </tr>
                        </table>
                    </p>
                </ol>
                <p>
                    <li>...and writes that data to a CSV- and a HTML-file as described below:</li>
                </p>
                <ol>
                    <p>
                        <table>
                            <tr>
                                <td style="padding:6px"><strong>Path</strong></td>
                                <td style="padding:6px"><strong>Type</strong></td>
                                <td style="padding:6px"><strong>Name</strong></td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>$env:temp\powershell_aliases.csv</code></td>
                                <td style="padding:6px">CSV-file</td>
                                <td style="padding:6px"><code>powershell_aliases.csv</code></td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>$env:temp\powershell_aliases.html</code></td>
                                <td style="padding:6px">HTML-file</td>
                                <td style="padding:6px"><code>powershell_aliases.html</code></td>
                            </tr>
                        </table>
                    </p>
                </ol>
                <p>
                    <li>And opens the HTML-file in the default browser.</li>
                </p>
            </ul>
        </td>
    </tr>
</table>




### Notes

<table>
    <tr>
        <th>:warning:</th>
        <td style="padding:6px">
            <ul>
                <li>PowerShell Aliases</li>
            </ul>
        </td>
    </tr>
    <tr>
        <th></th>
        <td style="padding:6px">
            <ul>
                <p>
                    <table>
                        <tr>
                            <th>Name</th>
                            <th>Definition</th>
                            <th>HelpUri</th>
                            <th>Version</th>
                        </tr>
                        <tr>
                            <td><code>%</code></td>
                            <td>ForEach-Object</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113300">http://go.microsoft.com/fwlink/?LinkID=113300</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>?</code></td>
                            <td>Where-Object</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113423">http://go.microsoft.com/fwlink/?LinkID=113423</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ac</code></td>
                            <td>Add-Content</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113278">http://go.microsoft.com/fwlink/?LinkID=113278</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>asnp</code></td>
                            <td>Add-PSSnapIn</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113281">http://go.microsoft.com/fwlink/?LinkID=113281</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>cat</code></td>
                            <td>Get-Content</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113310">http://go.microsoft.com/fwlink/?LinkID=113310</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>cd</code></td>
                            <td>Set-Location</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113397">http://go.microsoft.com/fwlink/?LinkID=113397</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>CFS</code></td>
                            <td>ConvertFrom-String</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=507579">http://go.microsoft.com/fwlink/?LinkID=507579</a></td>
                            <td>3.1.0.0</td>
                        </tr>
                        <tr>
                            <td><code>chdir</code></td>
                            <td>Set-Location</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113397">http://go.microsoft.com/fwlink/?LinkID=113397</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>clc</code></td>
                            <td>Clear-Content</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113282">http://go.microsoft.com/fwlink/?LinkID=113282</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>clear</code></td>
                            <td>Clear-Host</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=225747">http://go.microsoft.com/fwlink/?LinkID=225747</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>clhy</code></td>
                            <td>Clear-History</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=135199">http://go.microsoft.com/fwlink/?LinkID=135199</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>cli</code></td>
                            <td>Clear-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113283">http://go.microsoft.com/fwlink/?LinkID=113283</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>clp</code></td>
                            <td>Clear-ItemProperty</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113284">http://go.microsoft.com/fwlink/?LinkID=113284</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>cls</code></td>
                            <td>Clear-Host</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=225747">http://go.microsoft.com/fwlink/?LinkID=225747</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>clv</code></td>
                            <td>Clear-Variable</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113285">http://go.microsoft.com/fwlink/?LinkID=113285</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>cnsn</code></td>
                            <td>Connect-PSSession</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=210604">http://go.microsoft.com/fwlink/?LinkID=210604</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>compare</code></td>
                            <td>Compare-Object</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113286">http://go.microsoft.com/fwlink/?LinkID=113286</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>copy</code></td>
                            <td>Copy-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113292">http://go.microsoft.com/fwlink/?LinkID=113292</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>cp</code></td>
                            <td>Copy-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113292">http://go.microsoft.com/fwlink/?LinkID=113292</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>cpi</code></td>
                            <td>Copy-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113292">http://go.microsoft.com/fwlink/?LinkID=113292</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>cpp</code></td>
                            <td>Copy-ItemProperty</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113293">http://go.microsoft.com/fwlink/?LinkID=113293</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>curl</code></td>
                            <td>Invoke-WebRequest</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=217035">http://go.microsoft.com/fwlink/?LinkID=217035</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>cvpa</code></td>
                            <td>Convert-Path</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113289">http://go.microsoft.com/fwlink/?LinkID=113289</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>dbp</code></td>
                            <td>Disable-PSBreakpoint</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113294">http://go.microsoft.com/fwlink/?LinkID=113294</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>del</code></td>
                            <td>Remove-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113373">http://go.microsoft.com/fwlink/?LinkID=113373</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>diff</code></td>
                            <td>Compare-Object</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113286">http://go.microsoft.com/fwlink/?LinkID=113286</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>dir</code></td>
                            <td>Get-ChildItem</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113308">http://go.microsoft.com/fwlink/?LinkID=113308</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>dnsn</code></td>
                            <td>Disconnect-PSSession</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=210605">http://go.microsoft.com/fwlink/?LinkID=210605</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ebp</code></td>
                            <td>Enable-PSBreakpoint</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113295">http://go.microsoft.com/fwlink/?LinkID=113295</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>echo</code></td>
                            <td>Write-Output</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113427">http://go.microsoft.com/fwlink/?LinkID=113427</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>epal</code></td>
                            <td>Export-Alias</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113296">http://go.microsoft.com/fwlink/?LinkID=113296</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>epcsv</code></td>
                            <td>Export-Csv</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113299">http://go.microsoft.com/fwlink/?LinkID=113299</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>epsn</code></td>
                            <td>Export-PSSession</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=135213">http://go.microsoft.com/fwlink/?LinkID=135213</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>erase</code></td>
                            <td>Remove-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113373">http://go.microsoft.com/fwlink/?LinkID=113373</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>etsn</code></td>
                            <td>Enter-PSSession</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=135210">http://go.microsoft.com/fwlink/?LinkID=135210</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>exsn</code></td>
                            <td>Exit-PSSession</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=135212">http://go.microsoft.com/fwlink/?LinkID=135212</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>fc</code></td>
                            <td>Format-Custom</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113301">http://go.microsoft.com/fwlink/?LinkID=113301</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>fhx</code></td>
                            <td>Format-Hex</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkId=526919">http://go.microsoft.com/fwlink/?LinkId=526919</a></td>
                            <td>3.1.0.0</td>
                        </tr>
                        <tr>
                            <td><code>fl</code></td>
                            <td>Format-List</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113302">http://go.microsoft.com/fwlink/?LinkID=113302</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>foreach</code></td>
                            <td>ForEach-Object</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113300">http://go.microsoft.com/fwlink/?LinkID=113300</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ft</code></td>
                            <td>Format-Table</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113303">http://go.microsoft.com/fwlink/?LinkID=113303</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>fw</code></td>
                            <td>Format-Wide</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113304">http://go.microsoft.com/fwlink/?LinkID=113304</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gal</code></td>
                            <td>Get-Alias</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113306">http://go.microsoft.com/fwlink/?LinkID=113306</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gbp</code></td>
                            <td>Get-PSBreakpoint</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113325">http://go.microsoft.com/fwlink/?LinkID=113325</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gc</code></td>
                            <td>Get-Content</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113310">http://go.microsoft.com/fwlink/?LinkID=113310</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gcb</code></td>
                            <td>Get-Clipboard</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkId=526219">http://go.microsoft.com/fwlink/?LinkId=526219</a></td>
                            <td>3.1.0.0</td>
                        </tr>
                        <tr>
                            <td><code>gci</code></td>
                            <td>Get-ChildItem</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113308">http://go.microsoft.com/fwlink/?LinkID=113308</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gcm</code></td>
                            <td>Get-Command</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113309">http://go.microsoft.com/fwlink/?LinkID=113309</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gcs</code></td>
                            <td>Get-PSCallStack</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113326">http://go.microsoft.com/fwlink/?LinkID=113326</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gdr</code></td>
                            <td>Get-PSDrive</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113327">http://go.microsoft.com/fwlink/?LinkID=113327</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ghy</code></td>
                            <td>Get-History</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113317">http://go.microsoft.com/fwlink/?LinkID=113317</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gi</code></td>
                            <td>Get-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113319">http://go.microsoft.com/fwlink/?LinkID=113319</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gin</code></td>
                            <td>Get-ComputerInfo</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkId=799466">http://go.microsoft.com/fwlink/?LinkId=799466</a></td>
                            <td>3.1.0.0</td>
                        </tr>
                        <tr>
                            <td><code>gjb</code></td>
                            <td>Get-Job</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113328">http://go.microsoft.com/fwlink/?LinkID=113328</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gl</code></td>
                            <td>Get-Location</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113321">http://go.microsoft.com/fwlink/?LinkID=113321</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gm</code></td>
                            <td>Get-Member</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113322">http://go.microsoft.com/fwlink/?LinkID=113322</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gmo</code></td>
                            <td>Get-Module</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=141552">http://go.microsoft.com/fwlink/?LinkID=141552</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gp</code></td>
                            <td>Get-ItemProperty</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113320">http://go.microsoft.com/fwlink/?LinkID=113320</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gps</code></td>
                            <td>Get-Process</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113324">http://go.microsoft.com/fwlink/?LinkID=113324</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gpv</code></td>
                            <td>Get-ItemPropertyValue</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkId=389281">http://go.microsoft.com/fwlink/?LinkId=389281</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>group</code></td>
                            <td>Group-Object</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113338">http://go.microsoft.com/fwlink/?LinkID=113338</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gsn</code></td>
                            <td>Get-PSSession</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=135219">http://go.microsoft.com/fwlink/?LinkID=135219</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gsnp</code></td>
                            <td>Get-PSSnapIn</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113330">http://go.microsoft.com/fwlink/?LinkID=113330</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gsv</code></td>
                            <td>Get-Service</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113332">http://go.microsoft.com/fwlink/?LinkID=113332</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gtz</code></td>
                            <td>Get-TimeZone</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkId=799468">http://go.microsoft.com/fwlink/?LinkId=799468</a></td>
                            <td>3.1.0.0</td>
                        </tr>
                        <tr>
                            <td><code>gu</code></td>
                            <td>Get-Unique</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113335">http://go.microsoft.com/fwlink/?LinkID=113335</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gv</code></td>
                            <td>Get-Variable</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113336">http://go.microsoft.com/fwlink/?LinkID=113336</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>gwmi</code></td>
                            <td>Get-WmiObject</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113337">http://go.microsoft.com/fwlink/?LinkID=113337</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>h</code></td>
                            <td>Get-History</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113317">http://go.microsoft.com/fwlink/?LinkID=113317</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>history</code></td>
                            <td>Get-History</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113317">http://go.microsoft.com/fwlink/?LinkID=113317</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>icm</code></td>
                            <td>Invoke-Command</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=135225">http://go.microsoft.com/fwlink/?LinkID=135225</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>iex</code></td>
                            <td>Invoke-Expression</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113343">http://go.microsoft.com/fwlink/?LinkID=113343</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ihy</code></td>
                            <td>Invoke-History</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113344">http://go.microsoft.com/fwlink/?LinkID=113344</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ii</code></td>
                            <td>Invoke-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113345">http://go.microsoft.com/fwlink/?LinkID=113345</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ipal</code></td>
                            <td>Import-Alias</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113339">http://go.microsoft.com/fwlink/?LinkID=113339</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ipcsv</code></td>
                            <td>Import-Csv</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113341">http://go.microsoft.com/fwlink/?LinkID=113341</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ipmo</code></td>
                            <td>Import-Module</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=141553">http://go.microsoft.com/fwlink/?LinkID=141553</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ipsn</code></td>
                            <td>Import-PSSession</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=135221">http://go.microsoft.com/fwlink/?LinkID=135221</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>irm</code></td>
                            <td>Invoke-RestMethod</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=217034">http://go.microsoft.com/fwlink/?LinkID=217034</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ise</code></td>
                            <td>powershell_ise.exe</td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>iwmi</code></td>
                            <td>Invoke-WMIMethod</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113346">http://go.microsoft.com/fwlink/?LinkID=113346</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>iwr</code></td>
                            <td>Invoke-WebRequest</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=217035">http://go.microsoft.com/fwlink/?LinkID=217035</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>kill</code></td>
                            <td>Stop-Process</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113412">http://go.microsoft.com/fwlink/?LinkID=113412</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>lp</code></td>
                            <td>Out-Printer</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113367">http://go.microsoft.com/fwlink/?LinkID=113367</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ls</code></td>
                            <td>Get-ChildItem</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113308">http://go.microsoft.com/fwlink/?LinkID=113308</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>man</code></td>
                            <td>help</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113316">http://go.microsoft.com/fwlink/?LinkID=113316</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>md</code></td>
                            <td>mkdir</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113353">http://go.microsoft.com/fwlink/?LinkID=113353</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>measure</code></td>
                            <td>Measure-Object</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113349">http://go.microsoft.com/fwlink/?LinkID=113349</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>mi</code></td>
                            <td>Move-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113350">http://go.microsoft.com/fwlink/?LinkID=113350</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>mount</code></td>
                            <td>New-PSDrive</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113357">http://go.microsoft.com/fwlink/?LinkID=113357</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>move</code></td>
                            <td>Move-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113350">http://go.microsoft.com/fwlink/?LinkID=113350</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>mp</code></td>
                            <td>Move-ItemProperty</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113351">http://go.microsoft.com/fwlink/?LinkID=113351</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>mv</code></td>
                            <td>Move-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113350">http://go.microsoft.com/fwlink/?LinkID=113350</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>nal</code></td>
                            <td>New-Alias</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113352">http://go.microsoft.com/fwlink/?LinkID=113352</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ndr</code></td>
                            <td>New-PSDrive</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113357">http://go.microsoft.com/fwlink/?LinkID=113357</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ni</code></td>
                            <td>New-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113353">http://go.microsoft.com/fwlink/?LinkID=113353</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>nmo</code></td>
                            <td>New-Module</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=141554">http://go.microsoft.com/fwlink/?LinkID=141554</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>npssc</code></td>
                            <td>New-PSSessionConfigurationFile</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=217036">http://go.microsoft.com/fwlink/?LinkID=217036</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>nsn</code></td>
                            <td>New-PSSession</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=135237">http://go.microsoft.com/fwlink/?LinkID=135237</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>nv</code></td>
                            <td>New-Variable</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113361">http://go.microsoft.com/fwlink/?LinkID=113361</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ogv</code></td>
                            <td>Out-GridView</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113364">http://go.microsoft.com/fwlink/?LinkID=113364</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>oh</code></td>
                            <td>Out-Host</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113365">http://go.microsoft.com/fwlink/?LinkID=113365</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>popd</code></td>
                            <td>Pop-Location</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113369">http://go.microsoft.com/fwlink/?LinkID=113369</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ps</code></td>
                            <td>Get-Process</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113324">http://go.microsoft.com/fwlink/?LinkID=113324</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>pushd</code></td>
                            <td>Push-Location</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113370">http://go.microsoft.com/fwlink/?LinkID=113370</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>pwd</code></td>
                            <td>Get-Location</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113321">http://go.microsoft.com/fwlink/?LinkID=113321</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>r</code></td>
                            <td>Invoke-History</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113344">http://go.microsoft.com/fwlink/?LinkID=113344</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rbp</code></td>
                            <td>Remove-PSBreakpoint</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113375">http://go.microsoft.com/fwlink/?LinkID=113375</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rcjb</code></td>
                            <td>Receive-Job</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113372">http://go.microsoft.com/fwlink/?LinkID=113372</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rcsn</code></td>
                            <td>Receive-PSSession</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=217037">http://go.microsoft.com/fwlink/?LinkID=217037</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rd</code></td>
                            <td>Remove-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113373">http://go.microsoft.com/fwlink/?LinkID=113373</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rdr</code></td>
                            <td>Remove-PSDrive</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113376">http://go.microsoft.com/fwlink/?LinkID=113376</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ren</code></td>
                            <td>Rename-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113382">http://go.microsoft.com/fwlink/?LinkID=113382</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>ri</code></td>
                            <td>Remove-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113373">http://go.microsoft.com/fwlink/?LinkID=113373</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rjb</code></td>
                            <td>Remove-Job</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113377">http://go.microsoft.com/fwlink/?LinkID=113377</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rm</code></td>
                            <td>Remove-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113373">http://go.microsoft.com/fwlink/?LinkID=113373</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rmdir</code></td>
                            <td>Remove-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113373">http://go.microsoft.com/fwlink/?LinkID=113373</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rmo</code></td>
                            <td>Remove-Module</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=141556">http://go.microsoft.com/fwlink/?LinkID=141556</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rni</code></td>
                            <td>Rename-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113382">http://go.microsoft.com/fwlink/?LinkID=113382</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rnp</code></td>
                            <td>Rename-ItemProperty</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113383">http://go.microsoft.com/fwlink/?LinkID=113383</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rp</code></td>
                            <td>Remove-ItemProperty</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113374">http://go.microsoft.com/fwlink/?LinkID=113374</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rsn</code></td>
                            <td>Remove-PSSession</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=135250">http://go.microsoft.com/fwlink/?LinkID=135250</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rsnp</code></td>
                            <td>Remove-PSSnapin</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113378">http://go.microsoft.com/fwlink/?LinkID=113378</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rujb</code></td>
                            <td>Resume-Job</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=210611">http://go.microsoft.com/fwlink/?LinkID=210611</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rv</code></td>
                            <td>Remove-Variable</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113380">http://go.microsoft.com/fwlink/?LinkID=113380</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rwmi</code></td>
                            <td>Remove-WMIObject</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113381">http://go.microsoft.com/fwlink/?LinkID=113381</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>rvpa</code></td>
                            <td>Resolve-Path</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113384">http://go.microsoft.com/fwlink/?LinkID=113384</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>sajb</code></td>
                            <td>Start-Job</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113405">http://go.microsoft.com/fwlink/?LinkID=113405</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>sal</code></td>
                            <td>Set-Alias</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113390">http://go.microsoft.com/fwlink/?LinkID=113390</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>saps</code></td>
                            <td>Start-Process</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=135261">http://go.microsoft.com/fwlink/?LinkID=135261</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>sasv</code></td>
                            <td>Start-Service</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113406">http://go.microsoft.com/fwlink/?LinkID=113406</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>sbp</code></td>
                            <td>Set-PSBreakpoint</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113449">http://go.microsoft.com/fwlink/?LinkID=113449</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>sc</code></td>
                            <td>Set-Content</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113392">http://go.microsoft.com/fwlink/?LinkID=113392</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>scb</code></td>
                            <td>Set-Clipboard</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkId=526220">http://go.microsoft.com/fwlink/?LinkId=526220</a></td>
                            <td>3.1.0.0</td>
                        </tr>
                        <tr>
                            <td><code>select</code></td>
                            <td>Select-Object</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113387">http://go.microsoft.com/fwlink/?LinkID=113387</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>set</code></td>
                            <td>Set-Variable</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113401">http://go.microsoft.com/fwlink/?LinkID=113401</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>shcm</code></td>
                            <td>Show-Command</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=217448">http://go.microsoft.com/fwlink/?LinkID=217448</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>si</code></td>
                            <td>Set-Item</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113395">http://go.microsoft.com/fwlink/?LinkID=113395</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>sl</code></td>
                            <td>Set-Location</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113397">http://go.microsoft.com/fwlink/?LinkID=113397</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>sleep</code></td>
                            <td>Start-Sleep</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113407">http://go.microsoft.com/fwlink/?LinkID=113407</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>sls</code></td>
                            <td>Select-String</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113388">http://go.microsoft.com/fwlink/?LinkID=113388</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>sort</code></td>
                            <td>Sort-Object</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113403">http://go.microsoft.com/fwlink/?LinkID=113403</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>sp</code></td>
                            <td>Set-ItemProperty</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113396">http://go.microsoft.com/fwlink/?LinkID=113396</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>spjb</code></td>
                            <td>Stop-Job</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113413">http://go.microsoft.com/fwlink/?LinkID=113413</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>spps</code></td>
                            <td>Stop-Process</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113412">http://go.microsoft.com/fwlink/?LinkID=113412</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>spsv</code></td>
                            <td>Stop-Service</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113414">http://go.microsoft.com/fwlink/?LinkID=113414</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>start</code></td>
                            <td>Start-Process</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=135261">http://go.microsoft.com/fwlink/?LinkID=135261</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>stz</code></td>
                            <td>Set-TimeZone</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkId=799469">http://go.microsoft.com/fwlink/?LinkId=799469</a></td>
                            <td>3.1.0.0</td>
                        </tr>
                        <tr>
                            <td><code>sujb</code></td>
                            <td>Suspend-Job</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=210613">http://go.microsoft.com/fwlink/?LinkID=210613</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>sv</code></td>
                            <td>Set-Variable</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113401">http://go.microsoft.com/fwlink/?LinkID=113401</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>swmi</code></td>
                            <td>Set-WMIInstance</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113402">http://go.microsoft.com/fwlink/?LinkID=113402</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>tee</code></td>
                            <td>Tee-Object</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113417">http://go.microsoft.com/fwlink/?LinkID=113417</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>trcm</code></td>
                            <td>Trace-Command</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113419">http://go.microsoft.com/fwlink/?LinkID=113419</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>type</code></td>
                            <td>Get-Content</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113310">http://go.microsoft.com/fwlink/?LinkID=113310</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>wget</code></td>
                            <td>Invoke-WebRequest</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=217035">http://go.microsoft.com/fwlink/?LinkID=217035</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>where</code></td>
                            <td>Where-Object</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113423">http://go.microsoft.com/fwlink/?LinkID=113423</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>wjb</code></td>
                            <td>Wait-Job</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113422">http://go.microsoft.com/fwlink/?LinkID=113422</a></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><code>write</code></td>
                            <td>Write-Output</td>
                            <td><a href="http://go.microsoft.com/fwlink/?LinkID=113427">http://go.microsoft.com/fwlink/?LinkID=113427</a></td>
                            <td></td>
                        </tr>
                    </table>
                    <ol>                        
                        <p>Source: <a href="https://msdn.microsoft.com/powershell/reference/5.1/microsoft.powershell.utility/get-alias">Get-Alias</a></p>
                        <!-- Code that generated the above table:
                                $aliases_html = Get-Alias | Select-Object @{Label="Name";Expression={[string]'<code>' + ($_.Name) + '</code>'}},Definition,@{Label="HelpUri";Expression={[string]'<a href="' + ($_.HelpUri) + '">' + ($_.HelpUri) + '</a>'}},Version
                                $aliases_escaped = $aliases_html | ConvertTo-Html -As Table
                                $aliases_unescaped = $aliases_escaped.Replace('&lt;a href=&quot;','<a href="').Replace('&quot;&gt;','">').Replace('&lt;/a&gt;','</a>').Replace('<a href=""></a>','').Replace('&lt;code&gt;','<code>').Replace('&lt;/code&gt;','</code>').Replace('-&gt;','→')
                                $aliases_unescaped | Out-File -Encoding UTF8 "$env:temp\test.html"
                        -->
                    </ol>
                </p>
                <p>
                    <li>Extra aliases and special string output positioning/formatting characters and formulas in PowerShell
                    <br />
                    <br />
                        <table>
                            <tr>
                                <td style="padding:6px"><strong>Alias</strong></td>
                                <td style="padding:6px"><strong>Description</strong></td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>`</code></td>
                                <td style="padding:6px">Escape character: grave-accent (<code>`</code>) a.k.a. the backtick</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>'</code></td>
                                <td style="padding:6px">Delimit a string: single quotation mark (<code>'</code>)</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>"</code></td>
                                <td style="padding:6px">Delimit a string: quotation mark (<code>"</code>)</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>`0</code></td>
                                <td style="padding:6px">Null</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>`a</code></td>
                                <td style="padding:6px">Alert bell/beep</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>`b</code></td>
                                <td style="padding:6px">Backspace</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>`f</code></td>
                                <td style="padding:6px">Form feed (used with printer output)</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>`n</code></td>
                                <td style="padding:6px">New line</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>`r</code></td>
                                <td style="padding:6px">Carriage return</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>`r`n</code></td>
                                <td style="padding:6px">Carriage return + New line</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>`t</code></td>
                                <td style="padding:6px">Horizontal tab</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>`v</code></td>
                                <td style="padding:6px">Vertical tab (used with printer output)</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>&</code></td>
                                <td style="padding:6px">Execute string as command</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>#</code></td>
                                <td style="padding:6px">Comment / Remark</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>&lt;# ... #&gt;</code></td>
                                <td style="padding:6px">Multi-line comment</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>|</code></td>
                                <td style="padding:6px">Pipeline: Catch output of the command and pass it to another command</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>.</code></td>
                                <td style="padding:6px">A period: Run a command script in the current shell or matches one instance of any character or accessing a non-static member of the class</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>[class_name]::</code></td>
                                <td style="padding:6px">Double colon: reference static member of a class. The class name must be enclosed in square brackets.</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>+</code></td>
                                <td style="padding:6px">Add or addition of two arguments. Or a reference to a public nested class</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>-</code></td>
                                <td style="padding:6px">Subtract</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>/</code></td>
                                <td style="padding:6px">Divide</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>++</code></td>
                                <td style="padding:6px">Increment the numerical value on the left by one (and store the result)</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>+=</code></td>
                                <td style="padding:6px">Increment the value on the left by the amount on the right (and store the result)</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>-=</code></td>
                                <td style="padding:6px">Decrease the value on the left by the amount on the right</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>*=</code></td>
                                <td style="padding:6px">Multiply the value on the left by the amount on the right or for strings, duplicate the string on the left [amount_on_the_right] times</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>/=</code></td>
                                <td style="padding:6px">Divide the value on the left by the amount on the right (and store the result)</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>%</code></td>
                                <td style="padding:6px">Alias for ForEach-Object or remainder of division, same as Mod in VB.</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>--%</code></td>
                                <td style="padding:6px">Stop parsing input (available since Powershell v3.0): allows to feed commands with special characters, without them being treated as such</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>!</code></td>
                                <td style="padding:6px">Alias for -not</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>?</code></td>
                                <td style="padding:6px">Alias for Where-Object or a wildcard character, which matches zero or one instance of any character</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>*</code></td>
                                <td style="padding:6px">Multiply. Or a wildcard character that matches zero or more characters</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>$</code></td>
                                <td style="padding:6px">Dollar sign: Declare/use a variable</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>$_</code></td>
                                <td style="padding:6px">The current pipeline object ('this' token)</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>$variable&nbsp;=&nbsp;"value"</code></td>
                                <td style="padding:6px">Define a variable with a value</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>$$</code></td>
                                <td style="padding:6px">Last token of last command, does not refer to the whole command</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>$^</code></td>
                                <td style="padding:6px">First token of last command, does not refer to the whole command</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>$?</code></td>
                                <td style="padding:6px">Returns True or False value indicating whether previous command ended with an error. For some reason it does not catch all errors, but most of the time it works.</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>$()</code></td>
                                <td style="padding:6px">Sub-expression operator inside double-quoted strings: Whatever is in the brackets should be evaluated first.</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>${}</code></td>
                                <td style="padding:6px">Declare or use a variable with non-standard characters in it</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>$h&nbsp;=&nbsp;@{"key"&nbsp;=&nbsp;"value"}</code></td>
                                <td style="padding:6px">Declare a hash table <code>$h</code> with a key-value pair (semicolon as a separator)</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>@()</code></td>
                                <td style="padding:6px">Declare an array (in which comma is used as a separator)</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>@' ... '@</code></td>
                                <td style="padding:6px">Multi-line string literal without embedded variables</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>@" ... "@</code></td>
                                <td style="padding:6px">Multi-line string literal with embedded variables</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>0x</code></td>
                                <td style="padding:6px">Specify a number in hexadecimal form</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>[ ]</code></td>
                                <td style="padding:6px">Indicates a range of characters (with <code>-</code> or <code>..</code>) or a set of specified characters</td>
                            </tr>
                            <tr>
                                <td style="padding:6px"><code>[type]</code></td>
                                <td style="padding:6px">Aside from type casting, it can be used to specify strongly typed variables</td>
                            </tr>
                        </table>
                    <ol>                        
                        <p>Sources: <a href="http://ss64.com/ps/">An A-Z Index of Windows PowerShell commands</a>, <a href="http://ss64.com/ps/syntax-esc.html">Escape characters, Delimiters and Quotes</a>, <a href="http://ss64.com/ps/syntax-variables.html">Variables and Operators (add, subtract, divide...)</a>, <a href="https://msdn.microsoft.com/en-us/library/aa717088(v=vs.85).aspx">Supporting Wildcard Characters in Cmdlet Parameters</a>, <a href="https://technet.microsoft.com/en-us/library/ee692803.aspx">Working with Hash Tables</a> and <a href="https://technet.microsoft.com/en-us/library/2007.11.powershell.aspx">Windows PowerShell Writing Regular Expressions</a></p>
                    </ol></li>
                </p>
                <p>
                    <li>Please note that files are created in a directory, which is specified with the <code>$path</code> variable (at line 30). The <code>$env:temp</code> variable points to the current temp folder. The default value of the <code>$env:temp</code> variable is <code>C:\Users\&lt;username&gt;\AppData\Local\Temp</code> (i.e. each user account has their own separate temp folder at path <code>%USERPROFILE%\AppData\Local\Temp</code>). To see the current temp path, for instance a command
                    <br />
                    <br /><code>[System.IO.Path]::GetTempPath()</code>
                    <br />
                    <br />may be used at the PowerShell prompt window <code>[PS>]</code>. To change the temp folder for instance to <code>C:\Temp</code>, please, for example, follow the instructions at <a href="http://www.eightforums.com/tutorials/23500-temporary-files-folder-change-location-windows.html">Temporary Files Folder - Change Location in Windows</a>, which in essence are something along the lines:
                        <ol>
                           <li>Right click on Computer and click on Properties (or select Start → Control Panel → System). In the resulting window with the basic information about the computer...</li>
                           <li>Click on Advanced system settings on the left panel and select Advanced tab on the resulting pop-up window.</li>
                           <li>Click on the button near the bottom labeled Environment Variables.</li>
                           <li>In the topmost section labeled User variables both TMP and TEMP may be seen. Each different login account is assigned its own temporary locations. These values can be changed by double clicking a value or by highlighting a value and selecting Edit. The specified path will be used by Windows and many other programs for temporary files. It's advisable to set the same value (a directory path) for both TMP and TEMP.</li>
                           <li>Any running programs need to be restarted for the new values to take effect. In fact, probably also Windows itself needs to be restarted for it to begin using the new values for its own temporary files.</li>
                        </ol>
                    </li>
                </p>
            </ul>
        </td>
    </tr>
</table>




### Examples

<table>
    <tr>
        <th>:book:</th>
        <td style="padding:6px">To open this code in Windows PowerShell, for instance:</td>
   </tr>
   <tr>
        <th></th>
        <td style="padding:6px">
            <ol>
                <p>
                    <li><code>./Get-PowerShellAliasesTable</code><br />
                    Run the script. Please notice to insert <code>./</code> or <code>.\</code> before the script name.</li>
                </p>
                <p>
                    <li><code>help ./Get-PowerShellAliasesTable -Full</code><br />
                    Display the help file.</li>
                </p>
                <p>
                    <li><p><code>Set-ExecutionPolicy remotesigned</code><br />
                    This command is altering the Windows PowerShell rights to enable script execution for the default (LocalMachine) scope. Windows PowerShell has to be run with elevated rights (run as an administrator) to actually be able to change the script execution properties. The default value of the default (LocalMachine) scope is "<code>Set-ExecutionPolicy restricted</code>".</p>
                        <p>Parameters:
                                <ol>
                                    <table>
                                        <tr>
                                            <td style="padding:6px"><code>Restricted</code></td>
                                            <td style="padding:6px">Does not load configuration files or run scripts. Restricted is the default execution policy.</td>
                                        </tr>
                                        <tr>
                                            <td style="padding:6px"><code>AllSigned</code></td>
                                            <td style="padding:6px">Requires that all scripts and configuration files be signed by a trusted publisher, including scripts that you write on the local computer.</td>
                                        </tr>
                                        <tr>
                                            <td style="padding:6px"><code>RemoteSigned</code></td>
                                            <td style="padding:6px">Requires that all scripts and configuration files downloaded from the Internet be signed by a trusted publisher.</td>
                                        </tr>
                                        <tr>
                                            <td style="padding:6px"><code>Unrestricted</code></td>
                                            <td style="padding:6px">Loads all configuration files and runs all scripts. If you run an unsigned script that was downloaded from the Internet, you are prompted for permission before it runs.</td>
                                        </tr>
                                        <tr>
                                            <td style="padding:6px"><code>Bypass</code></td>
                                            <td style="padding:6px">Nothing is blocked and there are no warnings or prompts.</td>
                                        </tr>
                                        <tr>
                                            <td style="padding:6px"><code>Undefined</code></td>
                                            <td style="padding:6px">Removes the currently assigned execution policy from the current scope. This parameter will not remove an execution policy that is set in a Group Policy scope.</td>
                                        </tr>
                                    </table>
                                </ol>
                        </p>
                    <p>For more information, please type "<code>Get-ExecutionPolicy -List</code>", "<code>help Set-ExecutionPolicy -Full</code>", "<code>help about_Execution_Policies</code>" or visit <a href="https://technet.microsoft.com/en-us/library/hh849812.aspx">Set-ExecutionPolicy</a> or <a href="http://go.microsoft.com/fwlink/?LinkID=135170.">about_Execution_Policies</a>.</p>
                    </li>
                </p>
                <p>
                    <li><code>New-Item -ItemType File -Path C:\Temp\Get-PowerShellAliasesTable.ps1</code><br />
                    Creates an empty ps1-file to the <code>C:\Temp</code> directory. The <code>New-Item</code> cmdlet has an inherent <code>-NoClobber</code> mode built into it, so that the procedure will halt, if overwriting (replacing the contents) of an existing file is about to happen. Overwriting a file with the <code>New-Item</code> cmdlet requires using the <code>Force</code>. If the path name includes space characters, please enclose the path name in quotation marks (single or double):
                        <ol>
                            <br /><code>New-Item -ItemType File -Path "C:\Folder Name\Get-PowerShellAliasesTable.ps1"</code>
                        </ol>
                    <br />For more information, please type "<code>help New-Item -Full</code>".</li>
                </p>
            </ol>
        </td>
    </tr>
</table>




### Contributing

<p>Find a bug? Have a feature request? Here is how you can contribute to this project:</p>

 <table>
   <tr>
      <th><img class="emoji" title="contributing" alt="contributing" height="28" width="28" align="absmiddle" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f33f.png"></th>
      <td style="padding:6px"><strong>Bugs:</strong></td>
      <td style="padding:6px"><a href="https://github.com/auberginehill/get-powershell-aliases-table/issues">Submit bugs</a> and help us verify fixes.</td>
   </tr>
   <tr>
      <th rowspan="2"></th>
      <td style="padding:6px"><strong>Feature Requests:</strong></td>
      <td style="padding:6px">Feature request can be submitted by <a href="https://github.com/auberginehill/get-powershell-aliases-table/issues">creating an Issue</a>.</td>
   </tr>
   <tr>
      <td style="padding:6px"><strong>Edit Source Files:</strong></td>
      <td style="padding:6px"><a href="https://github.com/auberginehill/get-powershell-aliases-table/pulls">Submit pull requests</a> for bug fixes and features and discuss existing proposals.</td>
   </tr>
 </table>




### www

<table>
    <tr>
        <th><img class="emoji" title="www" alt="www" height="28" width="28" align="absmiddle" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f310.png"></th>
        <td style="padding:6px"><a href="https://github.com/auberginehill/get-powershell-aliases-table">Script Homepage</a></td>
    </tr>
    <tr>
        <th rowspan="5"></th>
        <td style="padding:6px">Martin Pugh: <a href="https://community.spiceworks.com/scripts/show/1738-get-foldersizes">Get-FolderSizes</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="http://ss64.com/ps/">An A-Z Index of Windows PowerShell commands</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://technet.microsoft.com/en-us/library/ff730936.aspx">Creating Formatted HTML Output</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://msdn.microsoft.com/powershell/reference/5.1/microsoft.powershell.utility/ConvertTo-Html">ConvertTo-Html</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://msdn.microsoft.com/powershell/reference/5.1/microsoft.powershell.core/about/about_aliases">about_Aliases</a></td>
    </tr>
</table>




### Related scripts

 <table>
    <tr>
        <th><img class="emoji" title="www" alt="www" height="28" width="28" align="absmiddle" src="https://assets-cdn.github.com/images/icons/emoji/unicode/0023-20e3.png"></th>
        <td style="padding:6px"><a href="https://github.com/auberginehill/firefox-customization-files">Firefox Customization Files</a></td>
    </tr>
    <tr>
        <th rowspan="19"></th>
        <td style="padding:6px"><a href="https://github.com/auberginehill/get-ascii-table">Get-AsciiTable</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/get-battery-info">Get-BatteryInfo</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/get-computer-info">Get-ComputerInfo</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/get-culture-tables">Get-CultureTables</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/get-directory-size">Get-DirectorySize</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/get-installed-programs">Get-InstalledPrograms</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/get-installed-windows-updates">Get-InstalledWindowsUpdates</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://gist.github.com/auberginehill/9c2f26146a0c9d3d1f30ef0395b6e6f5">Get-PowerShellSpecialFolders</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/get-ram-info">Get-RAMInfo</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://gist.github.com/auberginehill/eb07d0c781c09ea868123bf519374ee8">Get-TimeDifference</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/get-time-zone-table">Get-TimeZoneTable</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/get-unused-drive-letters">Get-UnusedDriveLetters</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/emoji-table">Emoji Table</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/java-update">Java-Update</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://gist.github.com/auberginehill/176774de38ebb3234b633c5fbc6f9e41">Rename-Files</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/rock-paper-scissors">Rock-Paper-Scissors</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/toss-a-coin">Toss-a-Coin</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/update-adobe-flash-player">Update-AdobeFlashPlayer</a></td>
    </tr>
    <tr>
        <td style="padding:6px"><a href="https://github.com/auberginehill/update-mozilla-firefox">Update-MozillaFirefox</a></td>
    </tr>
</table>
