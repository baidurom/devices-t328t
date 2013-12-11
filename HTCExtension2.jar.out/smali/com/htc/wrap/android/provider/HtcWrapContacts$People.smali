.class public Lcom/htc/wrap/android/provider/HtcWrapContacts$People;
.super Ljava/lang/Object;
.source "HtcWrapContacts.java"

# interfaces
.implements Lcom/htc/wrap/android/provider/HtcWrapContacts$PeopleColumns;
.implements Lcom/htc/wrap/android/provider/HtcWrapContacts$PhonesColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "People"
.end annotation


# static fields
.field public static final CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri; = null

.field public static final CONTENT_EAS_URI:Landroid/net/Uri; = null

.field public static final CONTENT_TYPE_WITH_PHONE_MAIL:Ljava/lang/String; = "vnd.android.cursor.dir/phone-and-mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EAS_CONTACTS_URI:Landroid/net/Uri;

.field public static final EAS_TRACKING_URI:Landroid/net/Uri;

.field public static final LIST_PEOPLE_BY_ID_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMBER_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NON_MEMBER_AND_PID_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NON_MEMBER_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PCSC_TRACKING_URI:Landroid/net/Uri;

.field public static final PEOPLE_WITH_THUMBNAIL:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNCML_TRACKING_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Landroid/provider/Contacts$People;->EAS_CONTACTS_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$People;->EAS_CONTACTS_URI:Landroid/net/Uri;

    .line 115
    sget-object v0, Landroid/provider/Contacts$People;->EAS_TRACKING_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$People;->EAS_TRACKING_URI:Landroid/net/Uri;

    .line 129
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_EAS_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$People;->CONTENT_EAS_URI:Landroid/net/Uri;

    .line 138
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$People;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    .line 146
    sget-object v0, Landroid/provider/Contacts$People;->PCSC_TRACKING_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$People;->PCSC_TRACKING_URI:Landroid/net/Uri;

    .line 153
    sget-object v0, Landroid/provider/Contacts$People;->SYNCML_TRACKING_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$People;->SYNCML_TRACKING_URI:Landroid/net/Uri;

    .line 170
    sget-object v0, Landroid/provider/Contacts$People;->LIST_PEOPLE_BY_ID_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$People;->LIST_PEOPLE_BY_ID_URI:Landroid/net/Uri;

    .line 186
    sget-object v0, Landroid/provider/Contacts$People;->MEMBER_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$People;->MEMBER_CONTENT_URI:Landroid/net/Uri;

    .line 202
    sget-object v0, Landroid/provider/Contacts$People;->NON_MEMBER_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$People;->NON_MEMBER_CONTENT_URI:Landroid/net/Uri;

    .line 225
    sget-object v0, Landroid/provider/Contacts$People;->NON_MEMBER_AND_PID_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$People;->NON_MEMBER_AND_PID_CONTENT_URI:Landroid/net/Uri;

    .line 239
    sget-object v0, Landroid/provider/Contacts$People;->PEOPLE_WITH_THUMBNAIL:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$People;->PEOPLE_WITH_THUMBNAIL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToMyContactsGroupIfNeed(Landroid/content/ContentResolver;J)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "personId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    invoke-static {p0, p1, p2}, Landroid/provider/Contacts$People;->addToMyContactsGroupIfNeed(Landroid/content/ContentResolver;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static clearFacebookPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "cr"
    .parameter "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    invoke-static {p0, p1}, Landroid/provider/Contacts$People;->clearFacebookPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 390
    return-void
.end method

.method public static createPersonAsDefaultType(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "resolver"
    .parameter "values"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    invoke-static {p0, p1}, Landroid/provider/Contacts$People;->createPersonAsDefaultType(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static hasContactPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 1
    .parameter "cr"
    .parameter "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    invoke-static {p0, p1}, Landroid/provider/Contacts$People;->hasContactPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static loadContactPhotoFacebook(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "person"
    .parameter "placeholderImageResource"
    .parameter "options"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$People;->loadContactPhotoFacebook(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadContactPhotoFacebook(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 1
    .parameter "context"
    .parameter "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 422
    invoke-static {p0, p1}, Landroid/provider/Contacts$People;->loadContactPhotoFacebook(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v0

    return-object v0
.end method

.method public static loadContactPhotoThumbnail(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "person"
    .parameter "placeholderImageResource"
    .parameter "options"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 477
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$People;->loadContactPhotoThumbnail(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static removeFromGroup(Landroid/content/ContentResolver;[JJ)I
    .locals 1
    .parameter "resolver"
    .parameter "personId"
    .parameter "groupId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$People;->removeFromGroup(Landroid/content/ContentResolver;[JJ)I

    move-result v0

    return v0
.end method

.method public static setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B[B)V
    .locals 0
    .parameter "cr"
    .parameter "person"
    .parameter "data"
    .parameter "overlayIconData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B[B)V

    .line 349
    return-void
.end method

.method public static setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B[BZ)V
    .locals 0
    .parameter "cr"
    .parameter "person"
    .parameter "data"
    .parameter "overlayIconData"
    .parameter "bFacebookData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B[BZ)V

    .line 379
    return-void
.end method
