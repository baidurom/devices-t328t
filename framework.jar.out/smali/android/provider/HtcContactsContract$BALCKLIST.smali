.class public final Landroid/provider/HtcContactsContract$BALCKLIST;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BALCKLIST"
.end annotation


# static fields
.field public static final BLACKLIST_CANDIDATE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final BLACKLIST_CONTENT_URI:Landroid/net/Uri; = null

.field public static final BLOCK_CALL_LOG_CONTENT_URI:Landroid/net/Uri; = null

.field public static final MASK:I = 0x1

.field public static final enableBlacklist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1517
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/provider/HtcContactsContract;->enableManageCalls:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    .line 1531
    sget-object v0, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "blacklist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcContactsContract$BALCKLIST;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    .line 1537
    sget-object v0, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "blacklist_candidate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcContactsContract$BALCKLIST;->BLACKLIST_CANDIDATE_CONTENT_URI:Landroid/net/Uri;

    .line 1543
    const-string v0, "content://call_log/calls_photo/blacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcContactsContract$BALCKLIST;->BLOCK_CALL_LOG_CONTENT_URI:Landroid/net/Uri;

    return-void

    .line 1517
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
