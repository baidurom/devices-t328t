.class public interface abstract Lcom/htc/opensense/social/ISocialManager;
.super Ljava/lang/Object;
.source "ISocialManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/ISocialManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAccountsByFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPluginTypes()[Lcom/htc/opensense/social/PluginDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hasFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract publishActivityStream(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncActivityStreams(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncContacts(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncLists(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
