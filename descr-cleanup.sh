# These files don't work well with the python scripts
#!/bin/sh

RMCOMMAND='/bin/rm -f'
declare -a clfiles=("descr/WGLWidget.cl" "descr/WRasterImage.cl" 
"descr/WVmlImage.cl" "descr/WSvgImage.cl" "descr/JSignal.cl" 
"descr/WIOService.cl" "descr/Signal.cl" "descr/WServer.cl" "descr/Http/Client.cl" 
"descr/WEvent.cl" "descr/SignalArgTraits.cl" "descr/Http/Message.cl" 
"descr/Http/WtClient.cl" "descr/WMatrix4x4.cl" "descr/WStringStream.cl"
"descr/WStreamResource.cl" "descr/WFileResource.cl" "descr/JSon/ParseError.cl")



## now loop through all .cl files to be removed
for f in "${clfiles[@]}"
do
   if [ ! -f "$f" ]; then
       echo  "$f" " File: " "$f" " not found!"
   else
      $RMCOMMAND "$f"
   fi;
done


rm descr/*Exception.cl
