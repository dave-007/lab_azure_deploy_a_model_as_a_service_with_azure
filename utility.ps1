Exit
# creates main.zip file with requires files for PS lab
Remove-Item ./main.zip -Force -ErrorAction SilentlyContinue
Compress-Archive -Path ./*.tf,./*.sh -DestinationPath ./main.zip -Update
Get-ChildItem ./*.zip



# add tf debugging log
New-Item -Path ENV: -Name 'TF_LOG' -Value TRACE
New-Item -Path ENV: -Name 'TF_LOG_PATH' -Value './log/tf_debug.log'


# nuke terraform state
Remove-Item ./.terraform -Force
Remove-Item ./.terraform/* -Force
Remove-Item *.tfstate* -Force

