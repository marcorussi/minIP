/*
 * The MIT License (MIT)
 *
 * Copyright (c) [2015] [Marco Russi]
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
*/

/*
 * This file app_udp.c represents the IP demo application source file.
 *
 * Author : Marco Russi
 *
 * Evolution of the file:
 * 10/08/2015 - File created - Marco Russi
 * 16/08/2015 - Minor changes and coding improvement for release - Marco Russi
 *
*/


/* ------------- Inclusion files -------------- */

#include "fw_common.h"

#include "app_ip.h"

#include "hal/port.h"
#include "sal/rtos/rtos.h"
#include "sal/ip/ipv4.h"
#include "sal/ip/icmp.h"




/* ---------------- Local definitions ---------------- */

/* Remote IP address */
#define UL_REMOTE_IP_ADD            (0x0A2A0001)  /* 10.42.0.1 */

/* Local IP address */
#define UL_LOCAL_IP_ADD             (0x0A2A000A)  /* 10.42.0.10 */




/* ---------------- Local typedef definitions ---------------- */




/* ---------------- Local const variables declaration ------------------ */




/* ---------------- Local variables declaration ------------------ */




/* -------------- Local functions prototypes --------------------- */

LOCAL void callback( void );




/* --------------- Exported functions declaration --------------- */

EXPORTED void APP_UDP_Init( void )
{
    boolean bInitSuccess = B_TRUE;

    /* init ETHMAC */
    bInitSuccess &= ETHMAC_Init();
    /* init IPv4 */
    bInitSuccess &= IPV4_Init();

    if( B_TRUE == bInitSuccess )
    {
        /* get obtained IP address via DHCP */
        IPV4_setLocalIPAddress(UL_LOCAL_IP_ADD);

        ICMP_StartEchoRequest(UL_LOCAL_IP_ADD, UL_REMOTE_IP_ADD);

        RTOS_SetCallback(RTOS_CB_ID_1, RTOS_CB_TYPE_SINGLE, 5000, &callback);
    }
    else
    {
        /* fail, do not go to init state */
    }
}




EXPORTED void APP_UDP_PeriodicTask( void )
{
    /* nothing to do */
}




/* -------------- Local functions declaration ------------------ */

/* callback function */
LOCAL void callback( void )
{
    ICMP_st_EchoResult eEchoResult;

    ICMP_StopEchoRequest(UL_LOCAL_IP_ADD, UL_REMOTE_IP_ADD);

    eEchoResult = ICMP_getEchoReqResult(UL_LOCAL_IP_ADD, UL_REMOTE_IP_ADD);
}




/* End of file */