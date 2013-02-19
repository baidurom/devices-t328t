.class public Lcom/htc/util/contacts/ImportUtils;
.super Ljava/lang/Object;
.source "ImportUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/ImportUtils$NamePhoneTypePair;,
        Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field private static final DEBUG:Z = false

.field private static final GOOGLE_MY_CONTACTS_GROUP:Ljava/lang/String; = "My Contacts"

.field public static final IMPORT_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ImportUtils"

.field private static final sEmptyContentValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/htc/util/contacts/ImportUtils;->sEmptyContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method private static addDataEmailIntoBuilder(Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "insertRawContact"
    .parameter "email"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 608
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 610
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 611
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 612
    const-string v1, "data2"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 613
    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 614
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    return-void
.end method

.method private static addDataFirstNameIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "name"
    .parameter "insertRawContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 527
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 528
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 529
    const-string v1, "data2"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 530
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    return-void
.end method

.method private static addDataFullNameIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "firstName"
    .parameter "lastName"
    .parameter "insertRawContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 506
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 507
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 508
    const-string v1, "data2"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 509
    const-string v1, "data3"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 510
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method private static addDataGroupIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "groupIdString"
    .parameter "insertRawContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 630
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 631
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 632
    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 633
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    return-void
.end method

.method private static addDataLastNameIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "name"
    .parameter "insertRawContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 547
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 548
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 549
    const-string v1, "data3"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 550
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    return-void
.end method

.method private static addDataNameIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "name"
    .parameter "insertRawContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 567
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 568
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 569
    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 570
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    return-void
.end method

.method private static addDataNoteIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "mNote"
    .parameter "insertRawContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 462
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 463
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 464
    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 465
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    return-void
.end method

.method private static addDataPhoneIntoBuilder(Ljava/util/ArrayList;ILjava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "type"
    .parameter "number"
    .parameter "insertRawContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 589
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 590
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 591
    const-string v1, "data2"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 592
    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 593
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 594
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    return-void
.end method

.method private static addDataWebsiteIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter "mWebsite"
    .parameter "mWebsiteType"
    .parameter "insertRawContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 483
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 484
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 485
    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 486
    const-string v1, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 487
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    return-void
.end method

.method private static addRawContactIntoBuilder(Ljava/util/ArrayList;Landroid/accounts/Account;)V
    .locals 3
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 438
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p1, :cond_0

    .line 439
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 440
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 444
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    return-void

    .line 442
    :cond_0
    sget-object v1, Lcom/htc/util/contacts/ImportUtils;->sEmptyContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public static applyImportOneOperation(Ljava/util/ArrayList;Landroid/database/Cursor;Ljava/lang/String;Landroid/accounts/Account;I)I
    .locals 3
    .parameter
    .parameter "cursor"
    .parameter "groupIdString"
    .parameter "account"
    .parameter "initRawContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    invoke-direct {v0}, Lcom/htc/util/contacts/ImportUtils$ContactInfo;-><init>()V

    .line 280
    .local v0, info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    iput-object p3, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mAccount:Landroid/accounts/Account;

    .line 282
    new-instance v1, Lcom/htc/util/contacts/ImportUtils$NamePhoneTypePair;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/util/contacts/ImportUtils$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, namePhoneTypePair:Lcom/htc/util/contacts/ImportUtils$NamePhoneTypePair;
    iget-object v2, v1, Lcom/htc/util/contacts/ImportUtils$NamePhoneTypePair;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mDisplayName:Ljava/lang/String;

    .line 285
    iget v2, v1, Lcom/htc/util/contacts/ImportUtils$NamePhoneTypePair;->phoneType:I

    iput v2, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneType:I

    .line 286
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber:Ljava/lang/String;

    .line 287
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber1:Ljava/lang/String;

    .line 288
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber2:Ljava/lang/String;

    .line 290
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mEmails:Ljava/lang/String;

    .line 292
    invoke-static {p0, v0, p2, p4}, Lcom/htc/util/contacts/ImportUtils;->applyImportOneOperation(Ljava/util/ArrayList;Lcom/htc/util/contacts/ImportUtils$ContactInfo;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static applyImportOneOperation(Ljava/util/ArrayList;Lcom/htc/util/contacts/ImportUtils$ContactInfo;Ljava/lang/String;I)I
    .locals 9
    .parameter
    .parameter "info"
    .parameter "groupIdString"
    .parameter "initRawContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez p0, :cond_0

    .line 424
    .end local p3
    :goto_0
    return p3

    .line 316
    .restart local p3
    :cond_0
    move v5, p3

    .line 317
    .local v5, insertRawContact:I
    const/4 v4, 0x0

    .line 320
    .local v4, insertCount:I
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mAccount:Landroid/accounts/Account;

    invoke-static {p0, v7}, Lcom/htc/util/contacts/ImportUtils;->addRawContactIntoBuilder(Ljava/util/ArrayList;Landroid/accounts/Account;)V

    .line 322
    add-int/lit8 v5, v5, 0x1

    .line 325
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 326
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mDisplayName:Ljava/lang/String;

    invoke-static {p0, v7, v5}, Lcom/htc/util/contacts/ImportUtils;->addDataNameIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 329
    add-int/lit8 v4, v4, 0x1

    .line 333
    :cond_1
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mFirstName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mLastName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 335
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mFirstName:Ljava/lang/String;

    iget-object v8, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mLastName:Ljava/lang/String;

    invoke-static {p0, v7, v8, v5}, Lcom/htc/util/contacts/ImportUtils;->addDataFullNameIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    add-int/lit8 v4, v4, 0x1

    .line 356
    :cond_2
    :goto_1
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mNote:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 357
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mNote:Ljava/lang/String;

    invoke-static {p0, v7, v5}, Lcom/htc/util/contacts/ImportUtils;->addDataNoteIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 360
    add-int/lit8 v4, v4, 0x1

    .line 364
    :cond_3
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mWebSite:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 365
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mWebSite:Ljava/lang/String;

    iget v8, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mWebSiteType:I

    invoke-static {p0, v7, v8, v5}, Lcom/htc/util/contacts/ImportUtils;->addDataWebsiteIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 369
    add-int/lit8 v4, v4, 0x1

    .line 372
    :cond_4
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 373
    iget v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneType:I

    iget-object v8, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-static {p0, v7, v8, v5}, Lcom/htc/util/contacts/ImportUtils;->addDataPhoneIntoBuilder(Ljava/util/ArrayList;ILjava/lang/String;I)V

    .line 377
    add-int/lit8 v4, v4, 0x1

    .line 379
    :cond_5
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber1:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 380
    iget v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneType:I

    iget-object v8, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber1:Ljava/lang/String;

    invoke-static {p0, v7, v8, v5}, Lcom/htc/util/contacts/ImportUtils;->addDataPhoneIntoBuilder(Ljava/util/ArrayList;ILjava/lang/String;I)V

    .line 384
    add-int/lit8 v4, v4, 0x1

    .line 386
    :cond_6
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber2:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 387
    iget v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneType:I

    iget-object v8, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mPhoneNumber2:Ljava/lang/String;

    invoke-static {p0, v7, v8, v5}, Lcom/htc/util/contacts/ImportUtils;->addDataPhoneIntoBuilder(Ljava/util/ArrayList;ILjava/lang/String;I)V

    .line 391
    add-int/lit8 v4, v4, 0x1

    .line 396
    :cond_7
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mEmails:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 397
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mEmails:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, emailAddressArray:[Ljava/lang/String;
    :goto_2
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mEmails:Ljava/lang/String;

    if-eqz v7, :cond_b

    if-eqz v2, :cond_b

    .line 404
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v6, :cond_c

    aget-object v1, v0, v3

    .line 405
    .local v1, emailAddress:Ljava/lang/String;
    invoke-static {p0, v5, v1}, Lcom/htc/util/contacts/ImportUtils;->addDataEmailIntoBuilder(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 408
    add-int/lit8 v4, v4, 0x1

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 341
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #emailAddress:Ljava/lang/String;
    .end local v2           #emailAddressArray:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    :cond_8
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mFirstName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 342
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mFirstName:Ljava/lang/String;

    invoke-static {p0, v7, v5}, Lcom/htc/util/contacts/ImportUtils;->addDataFirstNameIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 345
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 347
    :cond_9
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mLastName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 348
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mLastName:Ljava/lang/String;

    invoke-static {p0, v7, v5}, Lcom/htc/util/contacts/ImportUtils;->addDataLastNameIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 351
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 399
    :cond_a
    const/4 v2, 0x0

    .restart local v2       #emailAddressArray:[Ljava/lang/String;
    goto :goto_2

    .line 410
    :cond_b
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mEmail:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 411
    iget-object v7, p1, Lcom/htc/util/contacts/ImportUtils$ContactInfo;->mEmail:Ljava/lang/String;

    invoke-static {p0, v5, v7}, Lcom/htc/util/contacts/ImportUtils;->addDataEmailIntoBuilder(Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 414
    add-int/lit8 v4, v4, 0x1

    .line 418
    :cond_c
    if-eqz p2, :cond_d

    .line 419
    invoke-static {p0, p2, v5}, Lcom/htc/util/contacts/ImportUtils;->addDataGroupIntoBuilder(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 422
    add-int/lit8 v4, v4, 0x1

    .line 424
    :cond_d
    add-int p3, v5, v4

    goto/16 :goto_0
.end method

.method public static getGoogleGroupIdString(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .parameter "account"
    .parameter "resolver"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 642
    const/4 v6, 0x0

    .line 643
    .local v6, groupString:Ljava/lang/String;
    const-string v0, "com.google"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "sourceid"

    aput-object v0, v2, v5

    const-string v3, "title=? AND auto_add=1 AND group_is_read_only=1"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "My Contacts"

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 656
    .local v7, tmpCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 660
    :cond_0
    if-eqz v7, :cond_1

    .line 661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 667
    .end local v7           #tmpCursor:Landroid/database/Cursor;
    :cond_1
    return-object v6

    .line 660
    .restart local v7       #tmpCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static importContacts(Landroid/content/ContentResolver;Ljava/util/List;)I
    .locals 8
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/ImportUtils$ContactInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/ImportUtils$ContactInfo;>;"
    const/4 v5, -0x1

    .line 230
    .local v5, insertRawContact:I
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 233
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v0, batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/contacts/ImportUtils$ContactInfo;

    .line 237
    .local v4, info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v5}, Lcom/htc/util/contacts/ImportUtils;->applyImportOneOperation(Ljava/util/ArrayList;Lcom/htc/util/contacts/ImportUtils$ContactInfo;Ljava/lang/String;I)I

    move-result v5

    goto :goto_0

    .line 245
    .end local v4           #info:Lcom/htc/util/contacts/ImportUtils$ContactInfo;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 247
    const-string v6, "com.android.contacts"

    invoke-virtual {p0, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    .end local v0           #batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    return v5

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, e1:Landroid/content/OperationApplicationException;
    :try_start_1
    const-string v6, "ImportUtils"

    const-string v7, "ImportAllSimContactsThread:run"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 255
    .end local v1           #e1:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v6

    throw v6

    .line 253
    :catch_1
    move-exception v2

    .line 254
    .local v2, e2:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "ImportUtils"

    const-string v7, "ImportAllSimContactsThread:run"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static importSimIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)I
    .locals 2
    .parameter "simCursor"
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 145
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/util/contacts/ImportUtils;->importSimIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;II)I

    move-result v0

    return v0
.end method

.method public static importSimIntoContactDb(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;II)I
    .locals 9
    .parameter "simCursor"
    .parameter "resolver"
    .parameter "account"
    .parameter "startPos"
    .parameter "importCount"

    .prologue
    .line 166
    const/4 v5, 0x0

    .line 167
    .local v5, lastIndex:I
    move v6, p3

    .line 168
    .local v6, startIndex:I
    const/4 v7, -0x1

    if-ne p4, v7, :cond_1

    .line 169
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 170
    const/4 v6, 0x0

    .line 175
    :goto_0
    const/4 v4, -0x1

    .line 181
    .local v4, insertRawContact:I
    if-lez v5, :cond_0

    if-ltz v6, :cond_0

    .line 186
    :try_start_0
    invoke-static {p2, p1}, Lcom/htc/util/contacts/ImportUtils;->getGoogleGroupIdString(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, groupIdString:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v0, batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 191
    :goto_1
    if-ge v6, v5, :cond_3

    .line 193
    invoke-static {v0, p0, v3, p2, v4}, Lcom/htc/util/contacts/ImportUtils;->applyImportOneOperation(Ljava/util/ArrayList;Landroid/database/Cursor;Ljava/lang/String;Landroid/accounts/Account;I)I

    move-result v4

    .line 192
    add-int/lit8 v6, v6, 0x1

    invoke-interface {p0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 205
    .end local v0           #batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #groupIdString:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 206
    .local v1, e1:Landroid/content/OperationApplicationException;
    :try_start_1
    const-string v7, "ImportUtils"

    const-string v8, "ImportAllSimContactsThread:run"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .end local v1           #e1:Landroid/content/OperationApplicationException;
    :cond_0
    :goto_2
    return v4

    .line 172
    .end local v4           #insertRawContact:I
    :cond_1
    if-nez p0, :cond_2

    const/4 v5, 0x0

    :goto_3
    goto :goto_0

    :cond_2
    add-int v5, v6, p4

    goto :goto_3

    .line 197
    .restart local v0       #batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #groupIdString:Ljava/lang/String;
    .restart local v4       #insertRawContact:I
    :cond_3
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 199
    const-string v7, "com.android.contacts"

    invoke-virtual {p1, v7, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 207
    .end local v0           #batchOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #groupIdString:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 208
    .local v2, e2:Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "ImportUtils"

    const-string v8, "ImportAllSimContactsThread:run"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 209
    .end local v2           #e2:Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    throw v7
.end method
