file = pickAFile()
pic = makePicture( file )



def grayScaleImage( picture ):
  for px in getPixels( picture ):
    r = getRed( px )
    g = getGreen( px )
    b = getBlue( px )
    luminance = ( r + g + b ) / 3
    grayColor = makeColor( luminance, luminance, luminance )
     
    setColor( px, grayColor )
    
  show( picture )

def negativeImage( picture ):
  for px in getPixels( picture ):
    r = getRed( px )
    g = getGreen( px )
    b = getBlue( px )
    negColor = makeColor( 255 - r, 255 - g, 255 - b)
    setColor( px, negColor )
  
  show( picture )
  
def redImage( picture ):
  for px in getPixels( picture ):
    r = getRed( px )  
    redColor = makeColor( r, 0, 0 )
    setColor( px, redColor )
    
  show( picture )
  
def greenImage( picture ):
  for px in getPixels( picture ):
    g = getGreen( px )
    greenColor = makeColor( 0, g, 0 )
    setColor( px, greenColor )
  
  show( picture )
  
def blueImage( picture ):
  for px in getPixels( picture ):
    b = getBlue( px )
    blueColor = makeColor( 0, 0, b )
    setColor( px, blueColor )
    
  show( picture )
  
def blackImage( picture ):
  for px in getPixels( picture ):
    blackColor = makeColor( 0, 0, 0 )
    setColor( px, blackColor )
  
  show( picture )
  
def whiteImage( picture ):
  for px in getPixels( picture ):
    whiteColor = makeColor( 255, 255, 255 )
    setColor( px, whiteColor )
    
  show( picture )
  
  
negativeImage( pic )
