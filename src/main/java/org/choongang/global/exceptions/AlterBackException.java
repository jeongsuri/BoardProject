package org.choongang.global.exceptions;

public class AlterBackException extends AlterException {
    private String target;

    public AlterBackException(String message,int status,String target) {
        super(message,status);
        this.target = target;
    }

    public AlterBackException(String message,int status) {
        this(message,status,"self");
    }

    public String getTarget() {
        return target;
    }
}
