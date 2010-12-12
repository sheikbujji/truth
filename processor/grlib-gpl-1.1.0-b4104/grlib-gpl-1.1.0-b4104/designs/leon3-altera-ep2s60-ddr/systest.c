
#define CMPE_EQ "0x0"
#define CMPE_NE "0x1"
#define CMPE_GT "0x2"
#define CMPE_GE "0x3"
#define CMPE_LT "0x4"
#define CMPE_LE "0x5"

#define CE_INSTR(flag,sr1,sr2) asm(".word 0x81b00000 + ((" flag " & 0xf) << 25) + (((" sr1 ") & 0x1f) << 14) + (((" sr2 ") & 0x1f) << 0)")

main()

{
	CE_INSTR(CMPE_NE, "0x2", "0x1");

	CE_INSTR(CMPE_GT, "0x2", "0x1");

	report_start();

	base_test();

	report_end();
}
