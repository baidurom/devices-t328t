.class public Lcom/baidu/internal/telephony/DisturbPreventUtils$Columns;
.super Ljava/lang/Object;
.source "DisturbPreventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/telephony/DisturbPreventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ANTI_RULE_URI:Landroid/net/Uri; = null

.field public static final AUTHORITY:Ljava/lang/String; = "com.baidu.antidisturbance"

.field public static final BLACK_LIST:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final MMS:Ljava/lang/String; = "mms"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PHONE:Ljava/lang/String; = "phone"

.field public static final SWITCHER_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "phonenumberlist"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VIP:I = 0x0

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 270
    const-string v0, "content://com.baidu.antidisturbance/phonenumberlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils$Columns;->CONTENT_URI:Landroid/net/Uri;

    .line 272
    const-string v0, "content://com.baidu.antidisturbance/antisettings/antirule"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils$Columns;->ANTI_RULE_URI:Landroid/net/Uri;

    .line 273
    const-string v0, "content://com.baidu.antidisturbance/antisettings/switcher"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/telephony/DisturbPreventUtils$Columns;->SWITCHER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
