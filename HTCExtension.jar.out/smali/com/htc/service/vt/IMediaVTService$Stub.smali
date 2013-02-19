.class public abstract Lcom/htc/service/vt/IMediaVTService$Stub;
.super Landroid/os/Binder;
.source "IMediaVTService.java"

# interfaces
.implements Lcom/htc/service/vt/IMediaVTService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/vt/IMediaVTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/vt/IMediaVTService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.service.vt.IMediaVTService"

.field static final TRANSACTION_destroy:I = 0x4

.field static final TRANSACTION_getFarendSurface:I = 0x3

.field static final TRANSACTION_getNearendSurface:I = 0x2

.field static final TRANSACTION_hide:I = 0x6

.field static final TRANSACTION_hideFarend:I = 0x8

.field static final TRANSACTION_hideNearend:I = 0x7

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_setFarendVideoPos:I = 0xb

.field static final TRANSACTION_setNearendVideoPos:I = 0xa

.field static final TRANSACTION_show:I = 0x5

.field static final TRANSACTION_switchView:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/service/vt/IMediaVTService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/service/vt/IMediaVTService;
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
    const-string v1, "com.htc.service.vt.IMediaVTService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/service/vt/IMediaVTService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/service/vt/IMediaVTService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/service/vt/IMediaVTService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/service/vt/OnMediaVTServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/vt/OnMediaVTServiceEventListener;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/htc/service/vt/OnMediaVTServiceEventListener;
    invoke-virtual {p0, v0}, Lcom/htc/service/vt/IMediaVTService$Stub;->init(Lcom/htc/service/vt/OnMediaVTServiceEventListener;)Z

    move-result v4

    .line 51
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Lcom/htc/service/vt/OnMediaVTServiceEventListener;
    .end local v4           #_result:Z
    :sswitch_2
    const-string v7, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/htc/service/vt/IMediaVTService$Stub;->getNearendSurface()Landroid/view/Surface;

    move-result-object v4

    .line 59
    .local v4, _result:Landroid/view/Surface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v4, :cond_1

    .line 61
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {v4, p3, v6}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v4           #_result:Landroid/view/Surface;
    :sswitch_3
    const-string v7, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/htc/service/vt/IMediaVTService$Stub;->getFarendSurface()Landroid/view/Surface;

    move-result-object v4

    .line 73
    .restart local v4       #_result:Landroid/view/Surface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v4, :cond_2

    .line 75
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {v4, p3, v6}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v4           #_result:Landroid/view/Surface;
    :sswitch_4
    const-string v7, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/htc/service/vt/IMediaVTService$Stub;->destroy()Z

    move-result v4

    .line 87
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v4           #_result:Z
    :sswitch_5
    const-string v7, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/service/vt/IMediaVTService$Stub;->show()Z

    move-result v4

    .line 95
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v4, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v4           #_result:Z
    :sswitch_6
    const-string v7, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/service/vt/IMediaVTService$Stub;->hide()Z

    move-result v4

    .line 103
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v4           #_result:Z
    :sswitch_7
    const-string v7, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/htc/service/vt/IMediaVTService$Stub;->hideNearend()Z

    move-result v4

    .line 111
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v4, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v4           #_result:Z
    :sswitch_8
    const-string v7, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/htc/service/vt/IMediaVTService$Stub;->hideFarend()Z

    move-result v4

    .line 119
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v4, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    .end local v4           #_result:Z
    :sswitch_9
    const-string v7, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/htc/service/vt/IMediaVTService$Stub;->switchView()Z

    move-result v4

    .line 127
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v4, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v4           #_result:Z
    :sswitch_a
    const-string v7, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/service/vt/IMediaVTService$Stub;->setNearendVideoPos(IIII)Z

    move-result v4

    .line 143
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v4, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:Z
    :sswitch_b
    const-string v7, "com.htc.service.vt.IMediaVTService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    .restart local v3       #_arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/service/vt/IMediaVTService$Stub;->setFarendVideoPos(IIII)Z

    move-result v4

    .line 159
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v4, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
