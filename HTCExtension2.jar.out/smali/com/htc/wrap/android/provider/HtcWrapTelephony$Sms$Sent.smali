.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Sent;
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
    name = "Sent"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 995
    sget-object v0, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 992
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "nIndexOnSim"

    .prologue
    .line 999
    invoke-static/range {p0 .. p5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "sIndexes"

    .prologue
    .line 1007
    invoke-static/range {p0 .. p5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "sIndexes"
    .parameter "phonetype"

    .prologue
    .line 1013
    invoke-static/range {p0 .. p6}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addSIMMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JIII)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "threadId"
    .parameter "simsms"
    .parameter "simindex"
    .parameter "phoneType"

    .prologue
    .line 1019
    invoke-static/range {p0 .. p9}, Landroid/provider/Telephony$Sms$Sent;->addSIMMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;JIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
