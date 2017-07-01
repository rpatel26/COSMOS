#include <stdio.h>
#include <stdlib.h>

int main( int argc, char * argv[] )
{
	printf( "This is test!\n" );
	FILE * fp;
	fp = fopen( "temp.h264", "rb" );
	if( !fp )
	{
		fprintf( stderr, "Could not open file!!\n" );
		return -1;
	}
	char buff[ BUFSIZ ];
	while( fread( buff, 1, BUFSIZ, fp ) )
	{
		printf( "It works!!\n" );
	}	
	return 0;
}
