.class public Lcom/htc/util/phone/PhoneIntent;
.super Ljava/lang/Object;
.source "PhoneIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/phone/PhoneIntent$Ringing;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_REMOTE:Ljava/lang/String; = "com.htc.android.phoneremote.phone"

.field public static final KEY_CALL_TYPE:Ljava/lang/String; = "call_type"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final KEY_PHOTO:Ljava/lang/String; = "photo"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final VALUE_CALL_IDLE:I = 0x0

.field public static final VALUE_CALL_INCOMING:I = 0x1

.field public static final VALUE_CALL_MISSED:I = 0x3

.field public static final VALUE_CALL_OFFHOOK:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method
