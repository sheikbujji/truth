
#include <stdio.h>

void main(int argc, char *argv[])
{
	FILE *fp;
	char buffer[2];
	int i = 0;

	if(argc<2){
		return;
	}

	printf("FILENAME: %s\n", argv[1]);
	fp = fopen(argv[1], "rb");
	printf("TYPE memory_array IS array (0 to size) of std_logic_vector(0 to 7)\n");

	printf("VARIABLE mem : memory_array\n");

	while(fread(buffer, 1, 1, fp) == 1){
		printf("mem(%d) := To_stdlogicvector(X%02x);\n", i, (unsigned char)buffer[0]);
		i++;
	}
	fclose(fp);
}