import sys
import socket
import time
import numpy as np
import matplotlib.pyplot as plt

#Receive exactly the specified number of bytes from the socket connection
#required as recv() may return less bytes than requested
def recvall(conn, nBytes):
     recBytes = 0
     retBa = bytearray([])
     while True:
        retBa += conn.recv(nBytes - recBytes)
        recBytes = len(retBa)
        if recBytes == nBytes:
             break
     return bytes(retBa)


#send a string. Protocol:
#String lenght (1 bytes)
#ASCII encoded string  
def sendStr(sock,s):
   sock.send(bytes(bytearray([len(s)])))
   sock.send(s.encode('utf-8'))

#Receive a stirng adopting the same protocol as before
def recStr(sock):
   lb = sock.recv(1)
   l = int.from_bytes(lb, 'little')
   bs = recvall(sock, l)
   return bs.decode('utf-8')

#Receive samples. Protocol:
#Number of samples: 4 byte integer, little endian
#ch1 samples (2 bytes per samples)
#ch2 samples (2 bytes per sample)
def recData(sock):
  lb = recvall(sock, 4)
  nSamples = int.from_bytes(lb, 'little')
  print('N. Samples: ', nSamples)
  ch1Buf = recvall(sock, 2*nSamples)
  ch2Buf = recvall(sock, 2*nSamples)
  print('All samples received')
  ch1 = np.frombuffer(ch1Buf, dtype = np.short)
  ch2 = np.frombuffer(ch2Buf, dtype = np.short)
  return ch1, ch2

if len(sys.argv) != 5:
  print('Usage: python adc_client <board IP address>:<port> <Frequency division> <buffer dimension> <n. samples>')
  sys.exit(0)

ipAddr = sys.argv[1].split(':')[0]
port = int(sys.argv[1].split(':')[1])
fDiv = sys.argv[2]
bufDim = sys.argv[3]
nSamples = sys.argv[4]

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect((ipAddr, port))	
sendStr(sock, 'FDIV='+fDiv)
print(recStr(sock))
#check frequency division
sendStr(sock, 'FDIV?')
print(recStr(sock))
sendStr(sock, 'BUFDIM='+bufDim)
print(recStr(sock))
#check buffer dimension
sendStr(sock, 'BUFDIM?')
print(recStr(sock))
sendStr(sock, 'SAMPLES='+nSamples)
print(recStr(sock))
#chekc nSamples
sendStr(sock, 'SAMPLES?')
print(recStr(sock))
sendStr(sock, 'OPEN')
print(recStr(sock))
sendStr(sock, 'START')
#After the specified number of samples has been read
#thy are sent to the client
ch1, ch2 = recData(sock)
sendStr(sock, 'CLOSE')
print(recStr(sock))
#plot acquired samples
plt.plot(ch1)
plt.plot(ch2)
plt.show()



