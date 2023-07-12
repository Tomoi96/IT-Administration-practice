$dbServers = @("DatabaseServer1","DatabaseServer2")
$webServers = @("WebServer1","WebServer2","WebServer3")
$storageServers = @("StorageServer1")

#Adding new server below
$server = “StorageServer4”

if ($dbServers.Contains($server)) {
    Write-Output "Database inventory contains $server"
} 
elseif ($webServers.Contains($server)){
  Write-Output "Web Server inventory contains $server"
}
elseif ($storageServers.Contains($server)){
  Write-Output "Storage Server inventory contains $server"
}
else {
    switch ($server) {
        {$server.Contains("Database")} {
        $dbServers += $server
      }
      {$server.Contains("Web")} {
        $webServers += $server
      }
       {$server.Contains("Storage")} {
        $storageServers += $server
      }
      default {
        Write-Host "Server location is not found”
      }
      }
}