#include "ps4.h"
#include "patch.h"

int _main(struct thread *td) {
	initKernel();
	initLibc();
        syscall(11,patcher,td);
        initSysUtil();
        systemMessage("Start VR Headset.");
        return 0;
}


