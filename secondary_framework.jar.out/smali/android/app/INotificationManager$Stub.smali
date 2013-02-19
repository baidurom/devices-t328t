.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final TRANSACTION_cancelAllNotifications:I = 0x3

.field static final TRANSACTION_cancelNotification:I = 0x2

.field static final TRANSACTION_cancelNotificationWithTag:I = 0x9

.field static final TRANSACTION_cancelToast:I = 0x6

.field static final TRANSACTION_enqueueNotification:I = 0x1

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x7

.field static final TRANSACTION_enqueueNotificationWithTagPriority:I = 0x8

.field static final TRANSACTION_enqueueToast:I = 0x5

.field static final TRANSACTION_getAllNotificationRecord:I = 0x4

.field static final TRANSACTION_setShareLED:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.app.INotificationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/INotificationManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/INotificationManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/app/INotificationManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    .line 61
    .local v3, _arg2:Landroid/app/Notification;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 62
    .local v4, _arg3:[I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/INotificationManager$Stub;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    move v0, v8

    .line 65
    goto :goto_0

    .line 58
    .end local v3           #_arg2:Landroid/app/Notification;
    .end local v4           #_arg3:[I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/app/Notification;
    goto :goto_1

    .line 69
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/app/Notification;
    :sswitch_2
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelNotification(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 76
    goto :goto_0

    .line 80
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_3
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 85
    goto :goto_0

    .line 89
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getAllNotificationRecord()[Landroid/os/Bundle;

    move-result-object v7

    .line 91
    .local v7, _result:[Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v8

    .line 93
    goto :goto_0

    .line 97
    .end local v7           #_result:[Landroid/os/Bundle;
    :sswitch_5
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v2

    .line 103
    .local v2, _arg1:Landroid/app/ITransientNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 106
    goto/16 :goto_0

    .line 110
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/app/ITransientNotification;
    .end local v3           #_arg2:I
    :sswitch_6
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v2

    .line 115
    .restart local v2       #_arg1:Landroid/app/ITransientNotification;
    invoke-virtual {p0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 117
    goto/16 :goto_0

    .line 121
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/app/ITransientNotification;
    :sswitch_7
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 129
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification;

    .line 136
    .local v4, _arg3:Landroid/app/Notification;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .local v5, _arg4:[I
    move-object v0, p0

    .line 137
    invoke-virtual/range {v0 .. v5}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    move v0, v8

    .line 140
    goto/16 :goto_0

    .line 133
    .end local v4           #_arg3:Landroid/app/Notification;
    .end local v5           #_arg4:[I
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/app/Notification;
    goto :goto_2

    .line 144
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Landroid/app/Notification;
    :sswitch_8
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 152
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 154
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification;

    .line 161
    .local v5, _arg4:Landroid/app/Notification;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .local v6, _arg5:[I
    move-object v0, p0

    .line 162
    invoke-virtual/range {v0 .. v6}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTagPriority(Ljava/lang/String;Ljava/lang/String;IILandroid/app/Notification;[I)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    move v0, v8

    .line 165
    goto/16 :goto_0

    .line 158
    .end local v5           #_arg4:Landroid/app/Notification;
    .end local v6           #_arg5:[I
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/app/Notification;
    goto :goto_3

    .line 169
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Landroid/app/Notification;
    :sswitch_9
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 178
    goto/16 :goto_0

    .line 182
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :sswitch_a
    const-string v0, "android.app.INotificationManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/INotificationManager$Stub;->setShareLED(I)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 187
    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
