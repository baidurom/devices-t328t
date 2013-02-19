.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Inbox;
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
    name = "Inbox"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 955
    sget-object v0, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 953
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "nIndexOnSim"

    .prologue
    .line 961
    invoke-static/range {p0 .. p6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "sIndexes"

    .prologue
    .line 969
    invoke-static/range {p0 .. p6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "sIndexes"
    .parameter "phoneType"

    .prologue
    .line 976
    invoke-static/range {p0 .. p7}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addSIMMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIII)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "threadId"
    .parameter "simsms"
    .parameter "simindex"
    .parameter "phoneType"

    .prologue
    .line 983
    invoke-static/range {p0 .. p10}, Landroid/provider/Telephony$Sms$Inbox;->addSIMMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
