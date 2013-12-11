.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/wrap/android/provider/HtcWrapTelephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Intents;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Conversations;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Outbox;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Draft;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Sent;,
        Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms$Inbox;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final READ:Ljava/lang/String; = "read"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 857
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 855
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    return-void
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "nIndexOnSim"

    .prologue
    .line 867
    invoke-static/range {p0 .. p10}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "sIndexes"

    .prologue
    .line 876
    invoke-static/range {p0 .. p10}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "sIndexes"
    .parameter "phoneType"

    .prologue
    .line 899
    invoke-static/range {p0 .. p11}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "sIndexes"
    .parameter "other"

    .prologue
    .line 884
    invoke-static/range {p0 .. p11}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "sIndexes"
    .parameter "other"
    .parameter "phoneType"

    .prologue
    .line 892
    invoke-static/range {p0 .. p12}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContactPhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 0
    .parameter "context"
    .parameter "address"
    .parameter "mNoPhotoResource"
    .parameter "view"

    .prologue
    .line 936
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Telephony$Sms;->getContactPhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 937
    return-void
.end method

.method public static getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "address"

    .prologue
    .line 923
    invoke-static {p0, p1}, Landroid/provider/Telephony$Sms;->getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNamePhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;
    .locals 2
    .parameter "context"
    .parameter "address"
    .parameter "mNoPhotoResource"
    .parameter "view"

    .prologue
    .line 941
    new-instance v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Telephony$Sms;->getNamePhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)Landroid/provider/Telephony$namephoto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapTelephony$namephoto;-><init>(Landroid/provider/Telephony$namephoto;)V

    return-object v0
.end method

.method public static getPersonPhoto(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "address"
    .parameter "mNoPhotoResource"

    .prologue
    .line 930
    invoke-static {p0, p1, p2}, Landroid/provider/Telephony$Sms;->getPersonPhoto(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 910
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter "recipient"

    .prologue
    .line 947
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
