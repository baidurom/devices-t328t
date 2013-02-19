.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcThreads;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcThreads"
.end annotation


# static fields
.field public static final CONTACTBASE_THREAD_URI:Landroid/net/Uri;

.field public static final CONTACTBASE_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final THREAD_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1676
    sget-object v0, Landroid/provider/Telephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcThreads;->CONTENT_URI:Landroid/net/Uri;

    .line 1682
    sget-object v0, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcThreads;->CONTACTBASE_URI:Landroid/net/Uri;

    .line 1684
    sget-object v0, Landroid/provider/Telephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcThreads;->THREAD_CONTENT_URI:Landroid/net/Uri;

    .line 1689
    sget-object v0, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1674
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHtcThreadId(Landroid/content/Context;J)J
    .locals 2
    .parameter "context"
    .parameter "thread_id"

    .prologue
    .line 1692
    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$HtcThreads;->getHtcThreadId(Landroid/content/Context;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getHtcThreadId(Landroid/content/Context;Ljava/lang/String;Z)J
    .locals 2
    .parameter "context"
    .parameter "recipient"
    .parameter "create"

    .prologue
    .line 1696
    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$HtcThreads;->getHtcThreadId(Landroid/content/Context;Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getHtcThreadId(Landroid/content/Context;Ljava/util/Set;Z)J
    .locals 2
    .parameter "context"
    .parameter
    .parameter "create"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .line 1700
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$HtcThreads;->getHtcThreadId(Landroid/content/Context;Ljava/util/Set;Z)J

    move-result-wide v0

    return-wide v0
.end method
