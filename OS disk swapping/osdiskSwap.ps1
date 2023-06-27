$vm = Get-AzureRmVM -ResourceGroupName <> -Name <>

$disk = Get-AzureRmDisk -ResourceGroupName <> -Name <>

Set-AzureRmVMOSDisk -VM $vm -ManagedDiskId $disk.Id -Name $disk.Name 

Update-AzureRmVM -ResourceGroupName <> -VM $vm