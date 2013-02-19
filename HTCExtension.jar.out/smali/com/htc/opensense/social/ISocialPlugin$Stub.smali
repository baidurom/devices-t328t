.class public abstract Lcom/htc/opensense/social/ISocialPlugin$Stub;
.super Landroid/os/Binder;
.source "ISocialPlugin.java"

# interfaces
.implements Lcom/htc/opensense/social/ISocialPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/ISocialPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/ISocialPlugin$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.opensense.social.ISocialPlugin"

.field static final TRANSACTION_hasFeatures:I = 0x1

.field static final TRANSACTION_publishActivityStream:I = 0x3

.field static final TRANSACTION_syncActivityStreams:I = 0x2

.field static final TRANSACTION_syncContacts:I = 0x5

.field static final TRANSACTION_syncLists:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.opensense.social.ISocialPlugin"

    invoke-virtual {p0, p0, v0}, Lcom/htc/opensense/social/ISocialPlugin$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialPlugin;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.htc.opensense.social.ISocialPlugin"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/opensense/social/ISocialPlugin;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/opensense/social/ISocialPlugin;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/opensense/social/ISocialPlugin$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/opensense/social/ISocialPlugin$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.htc.opensense.social.ISocialPlugin"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.htc.opensense.social.ISocialPlugin"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/opensense/social/ISocialPluginResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialPluginResponse;

    move-result-object v0

    .line 51
    .local v0, _arg0:Lcom/htc/opensense/social/ISocialPluginResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 58
    .local v1, _arg1:Landroid/accounts/Account;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/ISocialPlugin$Stub;->hasFeatures(Lcom/htc/opensense/social/ISocialPluginResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v1           #_arg1:Landroid/accounts/Account;
    .end local v2           #_arg2:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/accounts/Account;
    goto :goto_1

    .line 64
    .end local v0           #_arg0:Lcom/htc/opensense/social/ISocialPluginResponse;
    .end local v1           #_arg1:Landroid/accounts/Account;
    :sswitch_2
    const-string v4, "com.htc.opensense.social.ISocialPlugin"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/opensense/social/ISocialPluginResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialPluginResponse;

    move-result-object v0

    .line 68
    .restart local v0       #_arg0:Lcom/htc/opensense/social/ISocialPluginResponse;
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 70
    .local v1, _arg1:[Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 76
    .local v2, _arg2:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/ISocialPlugin$Stub;->syncActivityStreams(Lcom/htc/opensense/social/ISocialPluginResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    goto :goto_0

    .line 74
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_2

    .line 81
    .end local v0           #_arg0:Lcom/htc/opensense/social/ISocialPluginResponse;
    .end local v1           #_arg1:[Landroid/accounts/Account;
    .end local v2           #_arg2:Landroid/os/Bundle;
    :sswitch_3
    const-string v4, "com.htc.opensense.social.ISocialPlugin"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/opensense/social/ISocialPluginResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialPluginResponse;

    move-result-object v0

    .line 85
    .restart local v0       #_arg0:Lcom/htc/opensense/social/ISocialPluginResponse;
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 87
    .restart local v1       #_arg1:[Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 93
    .restart local v2       #_arg2:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/ISocialPlugin$Stub;->publishActivityStream(Lcom/htc/opensense/social/ISocialPluginResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    goto :goto_0

    .line 91
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_3

    .line 98
    .end local v0           #_arg0:Lcom/htc/opensense/social/ISocialPluginResponse;
    .end local v1           #_arg1:[Landroid/accounts/Account;
    .end local v2           #_arg2:Landroid/os/Bundle;
    :sswitch_4
    const-string v4, "com.htc.opensense.social.ISocialPlugin"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/opensense/social/ISocialPluginResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialPluginResponse;

    move-result-object v0

    .line 102
    .restart local v0       #_arg0:Lcom/htc/opensense/social/ISocialPluginResponse;
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 104
    .restart local v1       #_arg1:[Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 110
    .restart local v2       #_arg2:Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/ISocialPlugin$Stub;->syncLists(Lcom/htc/opensense/social/ISocialPluginResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 108
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_4

    .line 115
    .end local v0           #_arg0:Lcom/htc/opensense/social/ISocialPluginResponse;
    .end local v1           #_arg1:[Landroid/accounts/Account;
    .end local v2           #_arg2:Landroid/os/Bundle;
    :sswitch_5
    const-string v4, "com.htc.opensense.social.ISocialPlugin"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/opensense/social/ISocialPluginResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialPluginResponse;

    move-result-object v0

    .line 119
    .restart local v0       #_arg0:Lcom/htc/opensense/social/ISocialPluginResponse;
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 121
    .restart local v1       #_arg1:[Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 127
    .restart local v2       #_arg2:Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/ISocialPlugin$Stub;->syncContacts(Lcom/htc/opensense/social/ISocialPluginResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 125
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_5

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
