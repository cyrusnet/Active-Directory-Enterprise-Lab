# ========================================================
# Active Directory FSMO Roles Migration
# Author: cyrusnet
# Description: Check and transfer FSMO roles using PowerShell Index
# ========================================================

# 1. Query current FSMO Role Holders
Write-Host "Checking current FSMO Role holders..." -ForegroundColor Cyan
netdom query fsmo

# 2. Transfer all 5 FSMO Roles to DC2 using role indexes (0,1,2,3,4)
Write-Host "`nMigrating all FSMO roles to DC2..." -ForegroundColor Yellow
Move-ADDirectoryServerOperationMasterRole -Identity "DC2" -OperationMasterRole 0,1,2,3,4 -Force

# 3. Verify new FSMO Role Holders
Write-Host "`nMigration complete! Verifying new FSMO Role holders:" -ForegroundColor Green
netdom query fsmo
