.class public abstract Lcom/baidu/security/bm/IBroadcastManagerService$Stub;
.super Landroid/os/Binder;
.source "IBroadcastManagerService.java"

# interfaces
.implements Lcom/baidu/security/bm/IBroadcastManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/security/bm/IBroadcastManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/security/bm/IBroadcastManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.baidu.security.bm.IBroadcastManagerService"

.field static final TRANSACTION_addCleanedApp:I = 0x5

.field static final TRANSACTION_addCleanedApps:I = 0x6

.field static final TRANSACTION_addLockedApp:I = 0x7

.field static final TRANSACTION_addLockedApps:I = 0x8

.field static final TRANSACTION_appIsLocked:I = 0xc

.field static final TRANSACTION_getCurrentAutoLaunchApps:I = 0x1

.field static final TRANSACTION_getLockedApps:I = 0xb

.field static final TRANSACTION_isPackageStopped:I = 0xd

.field static final TRANSACTION_isTrustedApp:I = 0xe

.field static final TRANSACTION_packageInBlackList:I = 0x4

.field static final TRANSACTION_removeLockedApp:I = 0x9

.field static final TRANSACTION_removeLockedApps:I = 0xa

.field static final TRANSACTION_updateBlackList:I = 0x3

.field static final TRANSACTION_updateBlackListItem:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/baidu/security/bm/IBroadcastManagerService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/baidu/security/bm/IBroadcastManagerService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/baidu/security/bm/IBroadcastManagerService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/baidu/security/bm/IBroadcastManagerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v2, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->getCurrentAutoLaunchApps()[Lcom/baidu/security/bm/AutoLaunchAppInfo;

    move-result-object v1

    .line 52
    .local v1, _result:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 58
    .end local v1           #_result:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :sswitch_2
    const-string v2, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    sget-object v2, Lcom/baidu/security/bm/AutoLaunchAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .line 66
    .local v0, _arg0:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->updateBlackListItem(Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    .end local v0           #_arg0:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    goto :goto_1

    .line 72
    .end local v0           #_arg0:Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :sswitch_3
    const-string v2, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/baidu/security/bm/AutoLaunchAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/security/bm/AutoLaunchAppInfo;

    .line 75
    .local v0, _arg0:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->updateBlackList([Lcom/baidu/security/bm/AutoLaunchAppInfo;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:[Lcom/baidu/security/bm/AutoLaunchAppInfo;
    :sswitch_4
    const-string v4, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->packageInBlackList(Ljava/lang/String;)Z

    move-result v1

    .line 85
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_5
    const-string v2, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->addCleanedApp(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v2, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->addCleanedApps([Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_7
    const-string v2, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->addLockedApp(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_8
    const-string v2, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->addLockedApps([Ljava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_9
    const-string v2, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->removeLockedApp(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v2, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->removeLockedApps([Ljava/lang/String;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    .end local v0           #_arg0:[Ljava/lang/String;
    :sswitch_b
    const-string v2, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->getLockedApps()[Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_c
    const-string v4, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->appIsLocked(Ljava/lang/String;)Z

    move-result v1

    .line 157
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 163
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_d
    const-string v4, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->isPackageStopped(Ljava/lang/String;)Z

    move-result v1

    .line 167
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 173
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Z
    :sswitch_e
    const-string v4, "com.baidu.security.bm.IBroadcastManagerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/security/bm/IBroadcastManagerService$Stub;->isTrustedApp(Ljava/lang/String;)Z

    move-result v1

    .line 177
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
