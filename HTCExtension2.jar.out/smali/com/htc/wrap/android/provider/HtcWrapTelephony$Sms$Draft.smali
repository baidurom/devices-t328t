.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Draft;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/wrap/android/provider/HtcWrapTelephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Draft"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1028
    sget-object v0, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1027
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"

    .prologue
    .line 1032
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/Telephony$Sms$Draft;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static saveMessage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "uri"
    .parameter "body"

    .prologue
    .line 1037
    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$Sms$Draft;->saveMessage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
