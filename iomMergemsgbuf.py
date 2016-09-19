import sys
#import os
#import getopt

def readfile(MsgBuf_h):
    msgbufFile      = open(MsgBuf_h,"r")
    MsgInfoLines = msgbufFile.readlines()    
    msgbufFile.close()
    msgbuf_dict=dict()
    for lineIdx in range(0,len(MsgInfoLines)):
        str=MsgInfoLines[lineIdx].strip()
        if MsgInfoLines[lineIdx].strip() !="":
            #list=relInfoLines[lineIdx].strip().split(" ")
	    key=MsgInfoLines[lineIdx].strip().split(" ")[1]
	    value=MsgInfoLines[lineIdx].strip().split("(")[1].split(")")[0]
	    key=key.strip()
	    if key not in msgbuf_dict.keys():
	        
	        msgbuf_dict[key]=value
	    else:
	        pass           
            
    return msgbuf_dict
def writefile(MsgBuf_h,msgbuf_dict):
    msgbufFile      = open(MsgBuf_h,"r")
    MsgInfoLines = msgbufFile.readlines()    
    msgbufFile.close()
    
    for lineIdx in range(0,len(MsgInfoLines)):
        for key in msgbuf_dict.keys():
            
            if key  in  MsgInfoLines[lineIdx].strip():
                
                value= msgbuf_dict[key]
                valueorg=MsgInfoLines[lineIdx].strip().split("(")[1].split(")")[0]    
                MsgInfoLines[lineIdx] = MsgInfoLines[lineIdx].replace(valueorg,value)
            
            
        relFile      = open(MsgBuf_h,"w")    
        relFile.writelines(MsgInfoLines)
        relFile.close()
def main(args):   

    msgbuf_F=args[0]
    msgbuf_other=args[1:]
    
    dict_f=readfile(msgbuf_F)
    for file in msgbuf_other:
        buf_dict=readfile(file)
        for key in dict_f.keys():
            if buf_dict[key] is not None and buf_dict[key]>dict_f[key]:
                dict_f[key]=buf_dict[key]
    writefile(msgbuf_F,dict_f)

def usage():
    print "Usage: iomMergemsgbuf.py Msgbuflies"   
    exit(-1)    
    
if __name__ == "__main__":    
    if len(sys.argv) < 6:
        usage()    
        
    main(sys.argv[1:])
