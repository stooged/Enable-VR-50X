#include "ps4.h"
#include "patch.h"

void systemMessage(char* msg) {
 	char buffer[512]; 
 	sprintf(buffer, "%s\n\n\n\n\n\n\n", msg);
 	sceSysUtilSendSystemNotificationWithText(0x81, buffer);
}

int _main(struct thread *td) {
	initKernel();
	initLibc();
        syscall(11,patcher,td);
        initSysUtil();
        systemMessage("Start VR Headset.");
        return 0;
}


