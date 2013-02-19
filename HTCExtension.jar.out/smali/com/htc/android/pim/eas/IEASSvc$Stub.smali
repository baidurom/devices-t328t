.class public abstract Lcom/htc/android/pim/eas/IEASSvc$Stub;
.super Landroid/os/Binder;
.source "IEASSvc.java"

# interfaces
.implements Lcom/htc/android/pim/eas/IEASSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/pim/eas/IEASSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/pim/eas/IEASSvc$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.android.pim.eas.IEASSvc"

.field static final TRANSACTION_deleteMeetingMail:I = 0x4

.field static final TRANSACTION_getAccountList:I = 0x1

.field static final TRANSACTION_searchGAL:I = 0x2

.field static final TRANSACTION_sendMeetingMail:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.htc.android.pim.eas.IEASSvc"

    invoke-virtual {p0, p0, v0}, Lcom/htc/android/pim/eas/IEASSvc$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/android/pim/eas/IEASSvc;
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
    const-string v1, "com.htc.android.pim.eas.IEASSvc"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/android/pim/eas/IEASSvc;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/htc/android/pim/eas/IEASSvc;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/htc/android/pim/eas/IEASSvc$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/android/pim/eas/IEASSvc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 15
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 107
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v1, "com.htc.android.pim.eas.IEASSvc"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "com.htc.android.pim.eas.IEASSvc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/htc/android/pim/eas/IEASSvc$Stub;->getAccountList()[Landroid/accounts/Account;

    move-result-object v14

    .line 52
    .local v14, _result:[Landroid/accounts/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 54
    const/4 v1, 0x1

    goto :goto_0

    .line 58
    .end local v14           #_result:[Landroid/accounts/Account;
    :sswitch_2
    const-string v1, "com.htc.android.pim.eas.IEASSvc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/htc/android/pim/eas/IEASSvc$Stub;->searchGAL(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/pim/eas/EASGalSearchResult;

    move-result-object v14

    .line 64
    .local v14, _result:Lcom/htc/android/pim/eas/EASGalSearchResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v14, :cond_0

    .line 66
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Lcom/htc/android/pim/eas/EASGalSearchResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 76
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v14           #_result:Lcom/htc/android/pim/eas/EASGalSearchResult;
    :sswitch_3
    const-string v1, "com.htc.android.pim.eas.IEASSvc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 82
    .local v3, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 84
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg3:I
    move-object v1, p0

    .line 85
    invoke-virtual/range {v1 .. v6}, Lcom/htc/android/pim/eas/IEASSvc$Stub;->sendMeetingMail(Ljava/lang/String;JII)I

    move-result v14

    .line 86
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v1, 0x1

    goto :goto_0

    .line 92
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:J
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v14           #_result:I
    :sswitch_4
    const-string v1, "com.htc.android.pim.eas.IEASSvc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 96
    .local v8, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 98
    .restart local v3       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 100
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6       #_arg3:I
    move-object v7, p0

    move-wide v10, v3

    move v12, v5

    move v13, v6

    .line 101
    invoke-virtual/range {v7 .. v13}, Lcom/htc/android/pim/eas/IEASSvc$Stub;->deleteMeetingMail(JJII)I

    move-result v14

    .line 102
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
