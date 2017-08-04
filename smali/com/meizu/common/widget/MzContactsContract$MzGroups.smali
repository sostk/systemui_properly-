.class public final Lcom/meizu/common/widget/MzContactsContract$MzGroups;
.super Ljava/lang/Object;
.source "MzContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/meizu/common/widget/MzContactsContract$MzGroupsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/MzContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MzGroups"
.end annotation


# static fields
.field public static final CONTENT_ACCOUNT_URI:Landroid/net/Uri;

.field public static final CONTENT_SUMMARY_FILTER_URI:Landroid/net/Uri;

.field public static final GROUP_SPLIT_MARK_EXTRA:Ljava/lang/String; = ","

.field public static final GROUP_SPLIT_MARK_SLASH:Ljava/lang/String; = "/"

.field public static final GROUP_SPLIT_MARK_VCARD:Ljava/lang/String; = ";"

.field public static final GROUP_SPLIT_MARK_XML:Ljava/lang/String; = "|"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 566
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract$MzGroups;->CONTENT_SUMMARY_FILTER_URI:Landroid/net/Uri;

    .line 573
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract$MzGroups;->CONTENT_ACCOUNT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupTitle(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "groupId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 602
    cmp-long v0, p1, v8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 603
    return-object v3

    :cond_0
    move v0, v2

    .line 602
    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 606
    .local v7, "title":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    .line 607
    .local v4, "mSelectionArgs1":[Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v6, 0x0

    .line 610
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "title"

    aput-object v3, v2, v0

    const-string/jumbo v3, "_id=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 614
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 618
    .end local v7    # "title":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v6, :cond_4

    .line 622
    :goto_2
    return-object v7

    .line 614
    .restart local v7    # "title":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 615
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .local v7, "title":Ljava/lang/String;
    goto :goto_1

    .line 619
    .end local v7    # "title":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v6    # "c":Landroid/database/Cursor;
    .local v7, "title":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 618
    if-nez v6, :cond_5

    .line 619
    :goto_3
    throw v0

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method
