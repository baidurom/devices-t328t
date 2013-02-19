.class public Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;
.super Ljava/lang/Object;
.source "HtcWrapTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Carriers"
.end annotation


# static fields
.field public static final APN:Ljava/lang/String; = "apn"

.field public static final AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final CDMA_CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CURRENT:Ljava/lang/String; = "current"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

#the value of this static final field might be set in the static constructor
.field public static final FLAG_APN_DISPATCH_MODE:Z = false

.field public static final INACTIVE_TIMER:Ljava/lang/String; = "inactivetimer"

.field public static final INSERT_BY:Ljava/lang/String; = "insert_by"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MMSC:Ljava/lang/String; = "mmsc"

.field public static final MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final MMSPROTOCOL:Ljava/lang/String; = "mmsprotocol"

.field public static final MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final SERVER:Ljava/lang/String; = "server"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final USER:Ljava/lang/String; = "user"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1467
    sget-boolean v0, Landroid/provider/Telephony$Carriers;->FLAG_APN_DISPATCH_MODE:Z

    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;->FLAG_APN_DISPATCH_MODE:Z

    .line 1471
    sget-object v0, Landroid/provider/Telephony$Carriers;->CDMA_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;->CDMA_CONTENT_URI:Landroid/net/Uri;

    .line 1485
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1464
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
