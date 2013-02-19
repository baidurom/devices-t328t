.class public abstract Lcom/htc/opensense/social/ISocialManager$Stub;
.super Landroid/os/Binder;
.source "ISocialManager.java"

# interfaces
.implements Lcom/htc/opensense/social/ISocialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/ISocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/ISocialManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.opensense.social.ISocialManager"

.field static final TRANSACTION_getAccounts:I = 0x2

.field static final TRANSACTION_getAccountsByFeatures:I = 0x4

.field static final TRANSACTION_getPluginTypes:I = 0x1

.field static final TRANSACTION_hasFeatures:I = 0x3

.field static final TRANSACTION_publishActivityStream:I = 0x6

.field static final TRANSACTION_syncActivityStreams:I = 0x5

.field static final TRANSACTION_syncContacts:I = 0x8

.field static final TRANSACTION_syncLists:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.opensense.social.ISocialManager"

    invoke-virtual {p0, p0, v0}, Lcom/htc/opensense/social/ISocialManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialManager;
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
    const-string v1, "com.htc.opensense.social.ISocialManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/opensense/social/ISocialManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/opensense/social/ISocialManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/opensense/social/ISocialManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/opensense/social/ISocialManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.htc.opensense.social.ISocialManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.htc.opensense.social.ISocialManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/opensense/social/ISocialManager$Stub;->getPluginTypes()[Lcom/htc/opensense/social/PluginDescription;

    move-result-object v3

    .line 49
    .local v3, _result:[Lcom/htc/opensense/social/PluginDescription;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 55
    .end local v3           #_result:[Lcom/htc/opensense/social/PluginDescription;
    :sswitch_2
    const-string v5, "com.htc.opensense.social.ISocialManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/ISocialManager$Stub;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 59
    .local v3, _result:[Landroid/accounts/Account;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:[Landroid/accounts/Account;
    :sswitch_3
    const-string v5, "com.htc.opensense.social.ISocialManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/opensense/social/ISocialManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialManagerResponse;

    move-result-object v0

    .line 69
    .local v0, _arg0:Lcom/htc/opensense/social/ISocialManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 76
    .local v1, _arg1:Landroid/accounts/Account;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/ISocialManager$Stub;->hasFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v1           #_arg1:Landroid/accounts/Account;
    .end local v2           #_arg2:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/accounts/Account;
    goto :goto_1

    .line 83
    .end local v0           #_arg0:Lcom/htc/opensense/social/ISocialManagerResponse;
    .end local v1           #_arg1:Landroid/accounts/Account;
    :sswitch_4
    const-string v5, "com.htc.opensense.social.ISocialManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/opensense/social/ISocialManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialManagerResponse;

    move-result-object v0

    .line 87
    .restart local v0       #_arg0:Lcom/htc/opensense/social/ISocialManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/social/ISocialManager$Stub;->getAccountsByFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;[Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:Lcom/htc/opensense/social/ISocialManagerResponse;
    .end local v1           #_arg1:[Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.htc.opensense.social.ISocialManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/opensense/social/ISocialManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialManagerResponse;

    move-result-object v0

    .line 98
    .restart local v0       #_arg0:Lcom/htc/opensense/social/ISocialManagerResponse;
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 100
    .local v1, _arg1:[Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 106
    .local v2, _arg2:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/ISocialManager$Stub;->syncActivityStreams(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 104
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_2

    .line 112
    .end local v0           #_arg0:Lcom/htc/opensense/social/ISocialManagerResponse;
    .end local v1           #_arg1:[Landroid/accounts/Account;
    .end local v2           #_arg2:Landroid/os/Bundle;
    :sswitch_6
    const-string v5, "com.htc.opensense.social.ISocialManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/opensense/social/ISocialManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialManagerResponse;

    move-result-object v0

    .line 116
    .restart local v0       #_arg0:Lcom/htc/opensense/social/ISocialManagerResponse;
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 118
    .restart local v1       #_arg1:[Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 124
    .restart local v2       #_arg2:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/ISocialManager$Stub;->publishActivityStream(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_3

    .line 130
    .end local v0           #_arg0:Lcom/htc/opensense/social/ISocialManagerResponse;
    .end local v1           #_arg1:[Landroid/accounts/Account;
    .end local v2           #_arg2:Landroid/os/Bundle;
    :sswitch_7
    const-string v5, "com.htc.opensense.social.ISocialManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/opensense/social/ISocialManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialManagerResponse;

    move-result-object v0

    .line 134
    .restart local v0       #_arg0:Lcom/htc/opensense/social/ISocialManagerResponse;
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 136
    .restart local v1       #_arg1:[Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 142
    .restart local v2       #_arg2:Landroid/os/Bundle;
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/ISocialManager$Stub;->syncLists(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_4

    .line 148
    .end local v0           #_arg0:Lcom/htc/opensense/social/ISocialManagerResponse;
    .end local v1           #_arg1:[Landroid/accounts/Account;
    .end local v2           #_arg2:Landroid/os/Bundle;
    :sswitch_8
    const-string v5, "com.htc.opensense.social.ISocialManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/opensense/social/ISocialManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialManagerResponse;

    move-result-object v0

    .line 152
    .restart local v0       #_arg0:Lcom/htc/opensense/social/ISocialManagerResponse;
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 154
    .restart local v1       #_arg1:[Landroid/accounts/Account;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 155
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 160
    .restart local v2       #_arg2:Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/social/ISocialManager$Stub;->syncContacts(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v2           #_arg2:Landroid/os/Bundle;
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_arg2:Landroid/os/Bundle;
    goto :goto_5

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
