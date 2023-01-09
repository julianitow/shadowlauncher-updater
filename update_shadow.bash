APPIMAGE=Shadow.AppImage
APP_PATH=/opt/Shadow
echo 'installing to' $APP_PATH/$APPIMAGE
sudo wget -nv --show-progress -o $APP_PATH/$APPIMAGE https://update.shadow.tech/launcher/prod/linux/ubuntu_18.04/Shadow.AppImage 
rm -rf $PWD/Shadow.AppImage*
sudo chmod +x $APP_PATH/$APPIMAGE
