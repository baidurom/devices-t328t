.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallManager;
.super Ljava/lang/Object;
.source "HtcWrapCallManager.java"


# static fields
.field private static instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallManager;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallManager;->instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallManager;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallManager;

    invoke-direct {v0}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallManager;-><init>()V

    sput-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallManager;->instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallManager;

    .line 15
    :cond_0
    sget-object v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallManager;->instance:Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCallManager;

    return-object v0
.end method


# virtual methods
.method public registerForLineControlInfoExt(Landroid/os/RegistrantList;Lcom/android/internal/telephony/CallManager;)V
    .locals 3
    .parameter "r"
    .parameter "cm"

    .prologue
    .line 20
    iget-object v0, p2, Lcom/android/internal/telephony/CallManager;->mSelfTracker1:Lcom/android/internal/telephony/CallManager$SelfCallTracker;

    iget-object v1, p2, Lcom/android/internal/telephony/CallManager;->mSelfTracker1:Lcom/android/internal/telephony/CallManager$SelfCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager$SelfCallTracker;->getRegEvent()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 21
    return-void
.end method
