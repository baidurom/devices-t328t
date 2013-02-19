.class public interface abstract Lcom/htc/android/pim/eas/IEASSvc;
.super Ljava/lang/Object;
.source "IEASSvc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/pim/eas/IEASSvc$Stub;
    }
.end annotation


# virtual methods
.method public abstract deleteMeetingMail(JJII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAccountList()[Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract searchGAL(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/pim/eas/EASGalSearchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMeetingMail(Ljava/lang/String;JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
