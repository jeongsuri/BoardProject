package org.choongang.global.exceptions;

public class AlterRedirectException extends AlterException {

    private String redirectUrl;

    public AlterRedirectException(String message, int status) {
        super(message, status);
        this.redirectUrl = redirectUrl;
    }

    public String getRedirectUrl() {
        return redirectUrl;
    }
}
