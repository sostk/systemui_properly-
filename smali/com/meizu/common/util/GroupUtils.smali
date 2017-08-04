.class public Lcom/meizu/common/util/GroupUtils;
.super Ljava/lang/Object;
.source "GroupUtils.java"


# static fields
.field private static final DATE_TYPE_LENGTH:I = 0x6

.field private static final DEFAULT_DATE:I = -0x1

.field public static final FORMER_YEAR:I = 0x5

.field public static final FUTURE:I = 0x0

.field private static final SPECIFIED_DATE_GROUP_LENGTH:I = 0x4

.field public static final SPECIFIED_FUTURE:I = 0x0

.field public static final SPECIFIED_OTHER:I = 0x3

.field public static final SPECIFIED_THIS_MONTH:I = 0x2

.field public static final SPECIFIED_THIS_WEEK:I = 0x1

.field public static final THIS_MONTH:I = 0x3

.field public static final THIS_WEEK:I = 0x2

.field public static final THIS_YEAR:I = 0x4

.field public static final TODAY:I = 0x1

.field public static final TYPE_FWMO:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDateType(JLandroid/text/format/Time;Landroid/text/format/Time;J)I
    .locals 6
    .param p0, "date"    # J
    .param p2, "then"    # Landroid/text/format/Time;
    .param p3, "now"    # Landroid/text/format/Time;
    .param p4, "currentTime"    # J

    .prologue
    const/4 v0, -0x1

    .line 163
    .local v0, "returnType":I
    invoke-virtual {p2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 164
    iget v3, p2, Landroid/text/format/Time;->year:I

    iget v4, p3, Landroid/text/format/Time;->year:I

    if-lt v3, v4, :cond_3

    .line 167
    cmp-long v3, p0, p4

    if-gtz v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 170
    :cond_0
    iget v3, p2, Landroid/text/format/Time;->year:I

    iget v4, p3, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_5

    .line 176
    :cond_1
    :goto_1
    iget v3, p3, Landroid/text/format/Time;->yearDay:I

    iget v4, p3, Landroid/text/format/Time;->weekDay:I

    sub-int v2, v3, v4

    .line 177
    .local v2, "weekStart":I
    add-int/lit8 v1, v2, 0x7

    .line 178
    .local v1, "weekEnd":I
    iget v3, p2, Landroid/text/format/Time;->yearDay:I

    if-ge v3, v2, :cond_6

    .line 184
    :cond_2
    :goto_2
    return v0

    .end local v1    # "weekEnd":I
    .end local v2    # "weekStart":I
    :cond_3
    const/4 v3, 0x5

    .line 165
    return v3

    .line 167
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    .line 172
    iget v3, p2, Landroid/text/format/Time;->month:I

    iget v4, p3, Landroid/text/format/Time;->month:I

    if-ne v3, v4, :cond_1

    const/4 v0, 0x3

    .line 173
    goto :goto_1

    .line 178
    .restart local v1    # "weekEnd":I
    .restart local v2    # "weekStart":I
    :cond_6
    iget v3, p2, Landroid/text/format/Time;->yearDay:I

    if-ge v3, v1, :cond_2

    const/4 v0, 0x2

    .line 180
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    iget v4, p3, Landroid/text/format/Time;->monthDay:I

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 181
    goto :goto_2
.end method

.method public static getGroupCountsByCursor(Landroid/database/Cursor;I)[I
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/meizu/common/util/GroupUtils;->getGroupCountsByCursor(Landroid/database/Cursor;III)[I

    move-result-object v0

    return-object v0
.end method

.method public static getGroupCountsByCursor(Landroid/database/Cursor;III)[I
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnIndex"    # I
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I

    .prologue
    .line 100
    if-gt p2, p3, :cond_1

    const/4 v0, 0x6

    .line 104
    new-array v7, v0, [I

    .line 105
    .local v7, "returnCount":[I
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 106
    .local v2, "then":Landroid/text/format/Time;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 107
    .local v3, "now":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 108
    .local v4, "currentTime":J
    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 109
    invoke-interface {p0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    :cond_0
    return-object v7

    .end local v2    # "then":Landroid/text/format/Time;
    .end local v3    # "now":Landroid/text/format/Time;
    .end local v4    # "currentTime":J
    .end local v7    # "returnCount":[I
    :cond_1
    const-string/jumbo v0, "Error"

    const-string/jumbo v1, "getGroupConntByCursor startPos > endPos error"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 102
    return-object v0

    .line 111
    .restart local v2    # "then":Landroid/text/format/Time;
    .restart local v3    # "now":Landroid/text/format/Time;
    .restart local v4    # "currentTime":J
    .restart local v7    # "returnCount":[I
    :cond_2
    :goto_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static/range {v0 .. v5}, Lcom/meizu/common/util/GroupUtils;->checkDateType(JLandroid/text/format/Time;Landroid/text/format/Time;J)I

    move-result v6

    .line 112
    .local v6, "dateType":I
    invoke-static {v6, v7}, Lcom/meizu/common/util/GroupUtils;->signDateCount(I[I)V

    .line 113
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 116
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public static getGroupCountsByList(Ljava/util/List;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 73
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/meizu/common/util/GroupUtils;->getGroupCountsByList(Ljava/util/List;II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getGroupCountsByList(Ljava/util/List;II)[I
    .locals 9
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-gt p1, p2, :cond_0

    const/4 v0, 0x6

    .line 148
    new-array v8, v0, [I

    .line 149
    .local v8, "returnCount":[I
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 150
    .local v2, "then":Landroid/text/format/Time;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 151
    .local v3, "now":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 152
    .local v4, "currentTime":J
    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 153
    move v7, p1

    .local v7, "i":I
    :goto_0
    if-le v7, p2, :cond_1

    .line 157
    return-object v8

    .end local v2    # "then":Landroid/text/format/Time;
    .end local v3    # "now":Landroid/text/format/Time;
    .end local v4    # "currentTime":J
    .end local v7    # "i":I
    .end local v8    # "returnCount":[I
    :cond_0
    const-string/jumbo v0, "Error"

    const-string/jumbo v1, "getGroupConntByCursor startPos > endPos error"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 146
    return-object v0

    .line 154
    .restart local v2    # "then":Landroid/text/format/Time;
    .restart local v3    # "now":Landroid/text/format/Time;
    .restart local v4    # "currentTime":J
    .restart local v7    # "i":I
    .restart local v8    # "returnCount":[I
    :cond_1
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static/range {v0 .. v5}, Lcom/meizu/common/util/GroupUtils;->checkDateType(JLandroid/text/format/Time;Landroid/text/format/Time;J)I

    move-result v6

    .line 155
    .local v6, "dateType":I
    invoke-static {v6, v8}, Lcom/meizu/common/util/GroupUtils;->signDateCount(I[I)V

    .line 153
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static getSpecifiedGroupCounts(ILandroid/database/Cursor;I)[I
    .locals 2
    .param p0, "type"    # I
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/meizu/common/util/GroupUtils;->getSpecifiedGroupCounts(ILandroid/database/Cursor;III)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSpecifiedGroupCounts(ILandroid/database/Cursor;III)[I
    .locals 8
    .param p0, "type"    # I
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    new-array v0, v7, [I

    .line 232
    .local v0, "specifiedCounts":[I
    invoke-static {p1, p2, p3, p4}, Lcom/meizu/common/util/GroupUtils;->getGroupCountsByCursor(Landroid/database/Cursor;III)[I

    move-result-object v1

    .line 233
    .local v1, "tempCounts":[I
    aget v2, v1, v3

    aput v2, v0, v3

    .line 234
    aget v2, v1, v4

    aget v3, v1, v5

    add-int/2addr v2, v3

    aput v2, v0, v4

    .line 235
    aget v2, v1, v6

    aput v2, v0, v5

    .line 236
    aget v2, v1, v7

    const/4 v3, 0x5

    aget v3, v1, v3

    add-int/2addr v2, v3

    aput v2, v0, v6

    .line 237
    return-object v0
.end method

.method public static getSpecifiedGroupCounts(ILjava/util/List;)[I
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/meizu/common/util/GroupUtils;->getSpecifiedGroupCounts(ILjava/util/List;II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSpecifiedGroupCounts(ILjava/util/List;II)[I
    .locals 8
    .param p0, "type"    # I
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 276
    new-array v0, v7, [I

    .line 277
    .local v0, "specifiedCounts":[I
    invoke-static {p1, p2, p3}, Lcom/meizu/common/util/GroupUtils;->getGroupCountsByList(Ljava/util/List;II)[I

    move-result-object v1

    .line 278
    .local v1, "tempCounts":[I
    aget v2, v1, v3

    aput v2, v0, v3

    .line 279
    aget v2, v1, v4

    aget v3, v1, v5

    add-int/2addr v2, v3

    aput v2, v0, v4

    .line 280
    aget v2, v1, v6

    aput v2, v0, v5

    .line 281
    aget v2, v1, v7

    const/4 v3, 0x5

    aget v3, v1, v3

    add-int/2addr v2, v3

    aput v2, v0, v6

    .line 282
    return-object v0
.end method

.method private static signDateCount(I[I)V
    .locals 6
    .param p0, "signDateType"    # I
    .param p1, "returnCount"    # [I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    packed-switch p0, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 191
    :pswitch_0
    aget v0, p1, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v1

    goto :goto_0

    .line 194
    :pswitch_1
    aget v0, p1, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v2

    goto :goto_0

    .line 197
    :pswitch_2
    aget v0, p1, v3

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v3

    goto :goto_0

    .line 200
    :pswitch_3
    aget v0, p1, v4

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v4

    goto :goto_0

    .line 203
    :pswitch_4
    aget v0, p1, v5

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, v5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    const/4 v1, 0x5

    .line 206
    aget v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
