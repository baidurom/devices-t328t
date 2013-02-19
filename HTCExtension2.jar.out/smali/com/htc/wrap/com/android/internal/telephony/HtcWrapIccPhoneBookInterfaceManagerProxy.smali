.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;
.super Ljava/lang/Object;
.source "HtcWrapIccPhoneBookInterfaceManagerProxy.java"


# static fields
.field private static instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;


# instance fields
.field simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;->simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;

    .line 14
    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;->simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;->instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;

    invoke-direct {v0}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;-><init>()V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;->instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;

    .line 20
    :cond_0
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;->instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;

    return-object v0
.end method


# virtual methods
.method public getAdnRecordsSizeExt(Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;II)[I
    .locals 2
    .parameter "instance"
    .parameter "efid"
    .parameter "phoneType"

    .prologue
    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccPhoneBookInterfaceManagerProxy;->simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSizeExt(II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
