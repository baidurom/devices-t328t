.class public final Landroid/provider/ContactsContract$CommonDataKinds$ContactLocation;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactLocation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/location_v2"

.field public static final LOCATION:Ljava/lang/String; = "data1"

.field public static final LOCATION_CDMA:I = 0x2

.field public static final LOCATION_GSM:I = 0x1

.field public static final LOCATION_PHONE:I = 0x0

.field public static final LOCATION_SIP:I = 0x3

.field public static final LOCATION_SUB_GSM:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5379
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
