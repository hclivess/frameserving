AVISource("F:\video\untitled.avi", audio=true)
#Lanczos4Resize (2560,1440)

#full range
#ConvertToYV24(matrix="rec709")

#limited range
#ConvertToYV24(matrix="PC.709")

#rgb
ConvertToRGB(matrix="PC.709")
