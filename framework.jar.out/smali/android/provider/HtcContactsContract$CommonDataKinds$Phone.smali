.class public final Landroid/provider/HtcContactsContract$CommonDataKinds$Phone;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation


# static fields
.field public static final CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri;

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1486
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 1491
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "lookup_number_equal"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1483
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
