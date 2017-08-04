.class Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONPathParser"
.end annotation


# instance fields
.field private ch:C

.field private level:I

.field private final path:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 496
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 497
    return-void
.end method

.method static isDigitFirst(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    const/16 v0, 0x2d

    .line 1020
    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30

    if-ge p0, v0, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x39

    if-le p0, v0, :cond_0

    goto :goto_1
.end method


# virtual methods
.method accept(C)V
    .locals 3
    .param p1, "expect"    # C

    .prologue
    .line 1139
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, p1, :cond_0

    .line 1143
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    :goto_0
    return-void

    .line 1140
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1144
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0
.end method

.method buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 22
    .param p1, "indexText"    # Ljava/lang/String;

    .prologue
    .line 1179
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .local v9, "indexTextLen":I
    const/16 v19, 0x0

    .line 1180
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    int-to-char v6, v0

    .line 1181
    .local v6, "firstChar":C
    add-int/lit8 v19, v9, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    int-to-char v13, v0

    .local v13, "lastChar":C
    const/16 v19, 0x2c

    .line 1183
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1185
    .local v4, "commaIndex":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    :cond_0
    const/16 v19, 0x3a

    .line 1202
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .local v3, "colonIndex":I
    const/16 v19, -0x1

    .line 1203
    move/from16 v0, v19

    if-eq v4, v0, :cond_5

    :cond_1
    const/16 v19, -0x1

    .line 1208
    move/from16 v0, v19

    if-ne v4, v0, :cond_6

    const/16 v19, -0x1

    .line 1217
    move/from16 v0, v19

    if-ne v3, v0, :cond_8

    .line 1258
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v19

    .end local v3    # "colonIndex":I
    :cond_2
    const/16 v19, 0x27

    .line 1185
    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    const/16 v19, 0x27

    move/from16 v0, v19

    if-ne v13, v0, :cond_0

    const/16 v19, -0x1

    .line 1187
    move/from16 v0, v19

    if-eq v4, v0, :cond_3

    const-string/jumbo v19, ","

    .line 1192
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1193
    .local v11, "indexesText":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v15, v0, [Ljava/lang/String;

    .local v15, "propertyNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1194
    .local v7, "i":I
    :goto_0
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v7, v0, :cond_4

    .line 1199
    new-instance v19, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;-><init>([Ljava/lang/String;)V

    return-object v19

    .end local v7    # "i":I
    .end local v11    # "indexesText":[Ljava/lang/String;
    .end local v15    # "propertyNames":[Ljava/lang/String;
    :cond_3
    const/16 v19, 0x1

    .line 1188
    add-int/lit8 v20, v9, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1189
    .local v14, "propertyName":Ljava/lang/String;
    new-instance v19, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v19

    .line 1195
    .end local v14    # "propertyName":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v11    # "indexesText":[Ljava/lang/String;
    .restart local v15    # "propertyNames":[Ljava/lang/String;
    :cond_4
    aget-object v12, v11, v7

    .local v12, "indexesTextItem":Ljava/lang/String;
    const/16 v19, 0x1

    .line 1196
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v7

    .line 1194
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v7    # "i":I
    .end local v11    # "indexesText":[Ljava/lang/String;
    .end local v12    # "indexesTextItem":Ljava/lang/String;
    .end local v15    # "propertyNames":[Ljava/lang/String;
    .restart local v3    # "colonIndex":I
    :cond_5
    const/16 v19, -0x1

    .line 1203
    move/from16 v0, v19

    if-ne v3, v0, :cond_1

    .line 1204
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1205
    .local v8, "index":I
    new-instance v19, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V

    return-object v19

    .end local v8    # "index":I
    :cond_6
    const-string/jumbo v19, ","

    .line 1209
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1210
    .restart local v11    # "indexesText":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v10, v0, [I

    .local v10, "indexes":[I
    const/4 v7, 0x0

    .line 1211
    .restart local v7    # "i":I
    :goto_1
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v7, v0, :cond_7

    .line 1214
    new-instance v19, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;-><init>([I)V

    return-object v19

    .line 1212
    :cond_7
    aget-object v19, v11, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    aput v19, v10, v7

    .line 1211
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7    # "i":I
    .end local v10    # "indexes":[I
    .end local v11    # "indexesText":[Ljava/lang/String;
    :cond_8
    const-string/jumbo v19, ":"

    .line 1218
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1219
    .restart local v11    # "indexesText":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v10, v0, [I

    .restart local v10    # "indexes":[I
    const/4 v7, 0x0

    .line 1220
    .restart local v7    # "i":I
    :goto_2
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v7, v0, :cond_a

    const/16 v19, 0x0

    .line 1233
    aget v16, v10, v19

    .line 1235
    .local v16, "start":I
    array-length v0, v10

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_d

    const/4 v5, -0x1

    .line 1241
    .local v5, "end":I
    :goto_3
    array-length v0, v10

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    const/16 v17, 0x1

    .line 1247
    .local v17, "step":I
    :goto_4
    if-gez v5, :cond_f

    .line 1252
    :cond_9
    if-lez v17, :cond_10

    .line 1255
    new-instance v19, Lcom/alibaba/fastjson/JSONPath$RangeSegement;

    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/fastjson/JSONPath$RangeSegement;-><init>(III)V

    return-object v19

    .line 1221
    .end local v5    # "end":I
    .end local v16    # "start":I
    .end local v17    # "step":I
    :cond_a
    aget-object v18, v11, v7

    .line 1222
    .local v18, "str":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_b

    .line 1229
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    aput v19, v10, v7

    .line 1220
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1223
    :cond_b
    if-eqz v7, :cond_c

    .line 1226
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v19

    :cond_c
    const/16 v19, 0x0

    .line 1224
    aput v19, v10, v7

    goto :goto_5

    .end local v18    # "str":Ljava/lang/String;
    .restart local v16    # "start":I
    :cond_d
    const/16 v19, 0x1

    .line 1236
    aget v5, v10, v19

    .restart local v5    # "end":I
    goto :goto_3

    :cond_e
    const/16 v19, 0x2

    .line 1242
    aget v17, v10, v19

    .restart local v17    # "step":I
    goto :goto_4

    .line 1247
    :cond_f
    move/from16 v0, v16

    if-ge v5, v0, :cond_9

    .line 1248
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "end must greater than or equals start. start "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ",  end "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1253
    :cond_10
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "step must greater than zero : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v19
.end method

.method public explain()[Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1149
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1150
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1149
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x8

    .line 1153
    new-array v1, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1156
    .local v1, "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v2

    .line 1157
    .local v2, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    if-eqz v2, :cond_3

    .line 1161
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v5, v1

    if-eq v4, v5, :cond_2

    .line 1166
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    aput-object v2, v1, v4

    goto :goto_0

    .line 1162
    :cond_2
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1163
    .local v3, "t":[Lcom/alibaba/fastjson/JSONPath$Segement;
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1164
    move-object v1, v3

    goto :goto_1

    .line 1169
    .end local v3    # "t":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_3
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v5, v1

    if-eq v4, v5, :cond_4

    .line 1173
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    new-array v0, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1174
    .local v0, "result":[Lcom/alibaba/fastjson/JSONPath$Segement;
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v1, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1175
    return-object v0

    .line 1170
    .end local v0    # "result":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_4
    return-object v1
.end method

.method isEOF()Z
    .locals 2

    .prologue
    .line 504
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method next()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 501
    return-void
.end method

.method parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 48
    .param p1, "acceptBracket"    # Z

    .prologue
    .line 593
    if-nez p1, :cond_5

    .line 597
    :goto_0
    const/16 v33, 0x0

    .line 599
    .local v33, "predicateFlag":Z
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_6

    .line 610
    :goto_1
    if-eqz v33, :cond_8

    .line 611
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v5

    .line 613
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 615
    if-nez v33, :cond_c

    .line 624
    :cond_1
    if-nez p1, :cond_e

    .line 629
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readOp()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v31

    .line 631
    .local v31, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 633
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-ne v0, v6, :cond_f

    .line 634
    :cond_3
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_11

    const/4 v10, 0x0

    .line 636
    .local v10, "not":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v37

    .line 638
    .local v37, "startValue":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v30

    .local v30, "name":Ljava/lang/String;
    const-string/jumbo v6, "and"

    .line 640
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v21

    .line 646
    .local v21, "endValue":Ljava/lang/Object;
    if-nez v37, :cond_13

    .line 647
    :cond_4
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 594
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v10    # "not":Z
    .end local v21    # "endValue":Ljava/lang/Object;
    .end local v30    # "name":Ljava/lang/String;
    .end local v31    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    .end local v33    # "predicateFlag":Z
    .end local v37    # "startValue":Ljava/lang/Object;
    :cond_5
    const/16 v6, 0x5b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_0

    .line 600
    .restart local v33    # "predicateFlag":Z
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 601
    const/16 v6, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 602
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x40

    if-eq v6, v7, :cond_7

    .line 607
    :goto_3
    const/16 v33, 0x1

    goto :goto_1

    .line 603
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 604
    const/16 v6, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_3

    .line 610
    :cond_8
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v6}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 923
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v36, v6, -0x1

    .line 924
    .local v36, "start":I
    :goto_4
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_51

    .line 938
    :cond_9
    if-nez p1, :cond_55

    .line 941
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_56

    .line 942
    :cond_a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v20, v6, -0x1

    .line 948
    .local v20, "end":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    move/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .local v39, "text":Ljava/lang/String;
    const-string/jumbo v6, "\\."

    .line 950
    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_57

    .line 955
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v35

    .line 957
    .local v35, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    if-nez p1, :cond_58

    .line 961
    :cond_b
    :goto_6
    return-object v35

    .line 615
    .end local v20    # "end":I
    .end local v35    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v36    # "start":I
    .end local v39    # "text":Ljava/lang/String;
    .restart local v5    # "propertyName":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x29

    if-ne v6, v7, :cond_1

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 617
    if-nez p1, :cond_d

    .line 621
    :goto_7
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v7, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 618
    :cond_d
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_7

    .line 624
    :cond_e
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_2

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 626
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v7, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 633
    .restart local v31    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_f
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_3

    .line 659
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-ne v0, v6, :cond_16

    .line 660
    :cond_10
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_1a

    const/4 v10, 0x0

    .line 661
    .restart local v10    # "not":Z
    :goto_8
    const/16 v6, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 663
    new-instance v44, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct/range {v44 .. v44}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 665
    .local v44, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v42

    .line 666
    .local v42, "value":Ljava/lang/Object;
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 670
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_1b

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v42

    .line 676
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .end local v10    # "not":Z
    .end local v42    # "value":Ljava/lang/Object;
    .end local v44    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_11
    const/4 v10, 0x1

    .line 634
    goto/16 :goto_2

    .line 641
    .restart local v10    # "not":Z
    .restart local v30    # "name":Ljava/lang/String;
    .restart local v37    # "startValue":Ljava/lang/Object;
    :cond_12
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 646
    .restart local v21    # "endValue":Ljava/lang/Object;
    :cond_13
    if-eqz v21, :cond_4

    .line 650
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 656
    :cond_14
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 650
    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 651
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;

    check-cast v37, Ljava/lang/Number;

    .end local v37    # "startValue":Ljava/lang/Object;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    check-cast v21, Ljava/lang/Number;

    .line 652
    .end local v21    # "endValue":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;-><init>(Ljava/lang/String;JJZ)V

    .line 653
    .local v4, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    invoke-direct {v6, v4}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 659
    .end local v4    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    .end local v10    # "not":Z
    .end local v30    # "name":Ljava/lang/String;
    :cond_16
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_10

    .line 764
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x27

    if-ne v6, v7, :cond_30

    .line 765
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v38

    .line 766
    .local v38, "strValue":Ljava/lang/String;
    if-nez v33, :cond_32

    .line 770
    :goto_a
    if-nez p1, :cond_33

    .line 774
    :goto_b
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_34

    .line 778
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_35

    .line 782
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-ne v0, v6, :cond_36

    :cond_18
    :goto_c
    const-string/jumbo v6, "%%"

    .line 783
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_37

    .line 787
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_38

    const/4 v10, 0x0

    .restart local v10    # "not":Z
    :goto_d
    const/16 v6, 0x25

    .line 789
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    .local v32, "p0":I
    const/4 v6, -0x1

    .line 790
    move/from16 v0, v32

    if-eq v0, v6, :cond_39

    const-string/jumbo v6, "%"

    .line 797
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .local v29, "items":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "startsWithValue":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "endsWithValue":Ljava/lang/String;
    const/4 v15, 0x0

    .line 802
    .local v15, "containsValues":[Ljava/lang/String;
    if-eqz v32, :cond_3b

    .line 813
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-eq v6, v7, :cond_3d

    .line 816
    move-object/from16 v0, v29

    array-length v6, v0

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3e

    .line 818
    move-object/from16 v0, v29

    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3f

    const/4 v6, 0x0

    .line 822
    aget-object v13, v29, v6

    .line 823
    .local v13, "startsWithValue":Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v14, v29, v6

    .line 824
    .local v14, "endsWithValue":Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    new-array v15, v6, [Ljava/lang/String;

    .local v15, "containsValues":[Ljava/lang/String;
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 825
    array-length v8, v15

    move-object/from16 v0, v29

    invoke-static {v0, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    .end local v13    # "startsWithValue":Ljava/lang/String;
    .end local v14    # "endsWithValue":Ljava/lang/String;
    .end local v15    # "containsValues":[Ljava/lang/String;
    :cond_19
    :goto_e
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v11, Lcom/alibaba/fastjson/JSONPath$MatchSegement;

    move-object v12, v5

    move/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-direct {v6, v11}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .end local v10    # "not":Z
    .end local v29    # "items":[Ljava/lang/String;
    .end local v32    # "p0":I
    .end local v38    # "strValue":Ljava/lang/String;
    :cond_1a
    const/4 v10, 0x1

    .line 660
    goto/16 :goto_8

    .line 679
    .restart local v10    # "not":Z
    .restart local v42    # "value":Ljava/lang/Object;
    .restart local v44    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1b
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 680
    if-nez v33, :cond_1e

    .line 684
    :goto_f
    if-nez p1, :cond_1f

    .line 689
    :goto_10
    const/16 v24, 0x1

    .line 690
    .local v24, "isInt":Z
    const/16 v25, 0x1

    .line 691
    .local v25, "isIntObj":Z
    const/16 v26, 0x1

    .line 692
    .local v26, "isString":Z
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_20

    .line 712
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_24

    .line 720
    :cond_1d
    if-nez v24, :cond_26

    .line 735
    if-nez v26, :cond_2a

    .line 749
    if-nez v25, :cond_2d

    .line 761
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 681
    .end local v24    # "isInt":Z
    .end local v25    # "isIntObj":Z
    .end local v26    # "isString":Z
    :cond_1e
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_f

    .line 685
    :cond_1f
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_10

    .line 692
    .restart local v24    # "isInt":Z
    .restart local v25    # "isIntObj":Z
    .restart local v26    # "isString":Z
    :cond_20
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    .line 693
    .local v28, "item":Ljava/lang/Object;
    if-eqz v28, :cond_22

    .line 700
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    .line 701
    .local v17, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v24, :cond_23

    .line 707
    :cond_21
    :goto_12
    if-eqz v26, :cond_1c

    const-class v7, Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_1c

    .line 708
    const/16 v26, 0x0

    goto :goto_11

    .line 694
    .end local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_22
    if-eqz v24, :cond_1c

    .line 695
    const/16 v24, 0x0

    goto :goto_11

    .restart local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23
    const-class v7, Ljava/lang/Byte;

    .line 701
    move-object/from16 v0, v17

    if-eq v0, v7, :cond_21

    const-class v7, Ljava/lang/Short;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_21

    const-class v7, Ljava/lang/Integer;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_21

    const-class v7, Ljava/lang/Long;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_21

    .line 703
    const/16 v24, 0x0

    .line 704
    const/16 v25, 0x0

    goto :goto_12

    .end local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "item":Ljava/lang/Object;
    :cond_24
    const/4 v6, 0x0

    .line 712
    move-object/from16 v0, v44

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1d

    .line 713
    if-nez v10, :cond_25

    .line 716
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v7, v5}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 714
    :cond_25
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v7, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 721
    :cond_26
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_27

    .line 727
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [J

    move-object/from16 v45, v0

    .local v45, "values":[J
    const/16 v22, 0x0

    .line 728
    .local v22, "i":I
    :goto_13
    move-object/from16 v0, v45

    array-length v6, v0

    move/from16 v0, v22

    if-lt v0, v6, :cond_29

    .line 732
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$IntInSegement;

    move-object/from16 v0, v45

    invoke-direct {v7, v5, v0, v10}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;-><init>(Ljava/lang/String;[JZ)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .end local v22    # "i":I
    .end local v45    # "values":[J
    :cond_27
    const/4 v6, 0x0

    .line 722
    move-object/from16 v0, v44

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v40

    .line 723
    .local v40, "value":J
    if-nez v10, :cond_28

    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 724
    .local v23, "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_14
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-wide/from16 v0, v40

    move-object/from16 v2, v23

    invoke-direct {v7, v5, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 723
    .end local v23    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_28
    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_14

    .line 729
    .end local v40    # "value":J
    .restart local v22    # "i":I
    .restart local v45    # "values":[J
    :cond_29
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    aput-wide v6, v45, v22

    .line 728
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    .line 736
    .end local v22    # "i":I
    .end local v45    # "values":[J
    :cond_2a
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2b

    .line 743
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v47, v0

    .line 744
    .local v47, "values":[Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 746
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$StringInSegement;

    move-object/from16 v0, v47

    invoke-direct {v7, v5, v0, v10}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .end local v47    # "values":[Ljava/lang/String;
    :cond_2b
    const/4 v6, 0x0

    .line 737
    move-object/from16 v0, v44

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 739
    .local v43, "value":Ljava/lang/String;
    if-nez v10, :cond_2c

    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 740
    .restart local v23    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_15
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-direct {v7, v5, v0, v1}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 739
    .end local v23    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_2c
    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_15

    .line 750
    .end local v43    # "value":Ljava/lang/String;
    :cond_2d
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/Long;

    move-object/from16 v46, v0

    .local v46, "values":[Ljava/lang/Long;
    const/16 v22, 0x0

    .line 751
    .restart local v22    # "i":I
    :goto_16
    move-object/from16 v0, v46

    array-length v6, v0

    move/from16 v0, v22

    if-lt v0, v6, :cond_2e

    .line 758
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;

    move-object/from16 v0, v46

    invoke-direct {v7, v5, v0, v10}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;-><init>(Ljava/lang/String;[Ljava/lang/Long;Z)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 752
    :cond_2e
    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Number;

    .line 753
    .local v27, "item":Ljava/lang/Number;
    if-nez v27, :cond_2f

    .line 751
    :goto_17
    add-int/lit8 v22, v22, 0x1

    goto :goto_16

    .line 754
    :cond_2f
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v46, v22

    goto :goto_17

    .line 764
    .end local v10    # "not":Z
    .end local v22    # "i":I
    .end local v24    # "isInt":Z
    .end local v25    # "isIntObj":Z
    .end local v26    # "isString":Z
    .end local v27    # "item":Ljava/lang/Number;
    .end local v42    # "value":Ljava/lang/Object;
    .end local v44    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v46    # "values":[Ljava/lang/Long;
    :cond_30
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x22

    if-eq v6, v7, :cond_17

    .line 838
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v6

    if-nez v6, :cond_40

    .line 861
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x6e

    if-eq v6, v7, :cond_45

    .line 879
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x74

    if-eq v6, v7, :cond_49

    .line 898
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x66

    if-eq v6, v7, :cond_4d

    .line 919
    :cond_31
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 767
    .restart local v38    # "strValue":Ljava/lang/String;
    :cond_32
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto/16 :goto_a

    .line 771
    :cond_33
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto/16 :goto_b

    .line 775
    :cond_34
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v8, 0x0

    move-object/from16 v0, v38

    invoke-direct {v7, v5, v0, v8}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 779
    :cond_35
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v8, 0x1

    move-object/from16 v0, v38

    invoke-direct {v7, v5, v0, v8}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 782
    :cond_36
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_18

    .line 835
    :goto_18
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-direct {v7, v5, v0, v1}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    :cond_37
    const-string/jumbo v6, "%%"

    const-string/jumbo v7, "%"

    .line 784
    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_c

    :cond_38
    const/4 v10, 0x1

    .line 787
    goto/16 :goto_d

    .line 791
    .restart local v10    # "not":Z
    .restart local v32    # "p0":I
    :cond_39
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_3a

    .line 794
    sget-object v31, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_18

    .line 792
    :cond_3a
    sget-object v31, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_18

    .line 803
    .local v13, "startsWithValue":Ljava/lang/String;
    .local v14, "endsWithValue":Ljava/lang/String;
    .local v15, "containsValues":[Ljava/lang/String;
    .restart local v29    # "items":[Ljava/lang/String;
    :cond_3b
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-eq v6, v7, :cond_3c

    .line 807
    move-object/from16 v0, v29

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v14, v29, v6

    .line 808
    .local v14, "endsWithValue":Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v6, v0

    const/4 v7, 0x2

    if-le v6, v7, :cond_19

    .line 809
    move-object/from16 v0, v29

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    new-array v15, v6, [Ljava/lang/String;

    .local v15, "containsValues":[Ljava/lang/String;
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 810
    array-length v8, v15

    move-object/from16 v0, v29

    invoke-static {v0, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_e

    .line 804
    .local v14, "endsWithValue":Ljava/lang/String;
    .local v15, "containsValues":[Ljava/lang/String;
    :cond_3c
    move-object/from16 v0, v29

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    new-array v15, v6, [Ljava/lang/String;

    .local v15, "containsValues":[Ljava/lang/String;
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 805
    array-length v8, v15

    move-object/from16 v0, v29

    invoke-static {v0, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_e

    .line 814
    .local v15, "containsValues":[Ljava/lang/String;
    :cond_3d
    move-object/from16 v15, v29

    .local v15, "containsValues":[Ljava/lang/String;
    goto/16 :goto_e

    .local v15, "containsValues":[Ljava/lang/String;
    :cond_3e
    const/4 v6, 0x0

    .line 817
    aget-object v13, v29, v6

    .local v13, "startsWithValue":Ljava/lang/String;
    goto/16 :goto_e

    .local v13, "startsWithValue":Ljava/lang/String;
    :cond_3f
    const/4 v6, 0x0

    .line 819
    aget-object v13, v29, v6

    .local v13, "startsWithValue":Ljava/lang/String;
    const/4 v6, 0x1

    .line 820
    aget-object v14, v29, v6

    .local v14, "endsWithValue":Ljava/lang/String;
    goto/16 :goto_e

    .line 839
    .end local v10    # "not":Z
    .end local v13    # "startsWithValue":Ljava/lang/String;
    .end local v14    # "endsWithValue":Ljava/lang/String;
    .end local v15    # "containsValues":[Ljava/lang/String;
    .end local v29    # "items":[Ljava/lang/String;
    .end local v32    # "p0":I
    .end local v38    # "strValue":Ljava/lang/String;
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v40

    .restart local v40    # "value":J
    const-wide/16 v18, 0x0

    .line 841
    .local v18, "doubleValue":D
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_41

    .line 846
    :goto_19
    if-nez v33, :cond_42

    .line 850
    :goto_1a
    if-nez p1, :cond_43

    :goto_1b
    const-wide/16 v6, 0x0

    .line 854
    cmpl-double v6, v18, v6

    if-nez v6, :cond_44

    .line 855
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-wide/from16 v0, v40

    move-object/from16 v2, v31

    invoke-direct {v7, v5, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 842
    :cond_41
    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readDoubleValue(J)D

    move-result-wide v18

    goto :goto_19

    .line 847
    :cond_42
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_1a

    .line 851
    :cond_43
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_1b

    .line 857
    :cond_44
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;

    move-wide/from16 v0, v18

    move-object/from16 v2, v31

    invoke-direct {v7, v5, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;-><init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 862
    .end local v18    # "doubleValue":D
    .end local v40    # "value":J
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "name":Ljava/lang/String;
    const-string/jumbo v6, "null"

    .line 863
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 864
    if-nez v33, :cond_46

    .line 867
    :goto_1c
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 869
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_47

    .line 873
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_48

    .line 877
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 865
    :cond_46
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_1c

    .line 870
    :cond_47
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v7, v5}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 874
    :cond_48
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v7, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 880
    .end local v30    # "name":Ljava/lang/String;
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "name":Ljava/lang/String;
    const-string/jumbo v6, "true"

    .line 882
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 883
    if-nez v33, :cond_4a

    .line 886
    :goto_1d
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 888
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_4b

    .line 892
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_4c

    .line 896
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 884
    :cond_4a
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_1d

    .line 889
    :cond_4b
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v9, 0x1

    invoke-direct {v7, v5, v8, v9}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 893
    :cond_4c
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-direct {v7, v5, v8, v9}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 899
    .end local v30    # "name":Ljava/lang/String;
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "name":Ljava/lang/String;
    const-string/jumbo v6, "false"

    .line 901
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 902
    if-nez v33, :cond_4e

    .line 905
    :goto_1e
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 907
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_4f

    .line 911
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v31

    if-eq v0, v6, :cond_50

    .line 915
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 903
    :cond_4e
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_1e

    .line 908
    :cond_4f
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v9, 0x1

    invoke-direct {v7, v5, v8, v9}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 912
    :cond_50
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-direct {v7, v5, v8, v9}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 924
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v30    # "name":Ljava/lang/String;
    .end local v31    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    .restart local v36    # "start":I
    :cond_51
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v6

    if-nez v6, :cond_9

    .line 925
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_53

    .line 931
    :cond_52
    :goto_1f
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_54

    .line 934
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto/16 :goto_4

    .line 925
    :cond_53
    if-nez v33, :cond_52

    if-eqz v33, :cond_9

    goto :goto_1f

    .line 932
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_20

    .line 939
    :cond_55
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v20, v6, -0x1

    .restart local v20    # "end":I
    goto/16 :goto_5

    .line 941
    .end local v20    # "end":I
    :cond_56
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_a

    .line 944
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    move/from16 v20, v0

    .restart local v20    # "end":I
    goto/16 :goto_5

    .restart local v39    # "text":Ljava/lang/String;
    :cond_57
    const-string/jumbo v6, "\\\\\\."

    const-string/jumbo v7, "\\."

    .line 951
    move-object/from16 v0, v39

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 952
    .local v34, "propName":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/4 v7, 0x0

    move-object/from16 v0, v34

    invoke-direct {v6, v0, v7}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v6

    .line 957
    .end local v34    # "propName":Ljava/lang/String;
    .restart local v35    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_58
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v6

    if-nez v6, :cond_b

    .line 958
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto/16 :goto_6
.end method

.method protected readDoubleValue(J)D
    .locals 9
    .param p1, "longValue"    # J

    .prologue
    .line 981
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v3, -0x1

    .line 983
    .local v0, "beginIndex":I
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 984
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x30

    if-ge v3, v6, :cond_1

    .line 988
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v3, -0x1

    .line 989
    .local v1, "endIndex":I
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 990
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 991
    .local v4, "value":D
    long-to-double v6, p1

    add-double/2addr v4, v6

    .line 992
    return-wide v4

    .line 984
    .end local v1    # "endIndex":I
    .end local v2    # "text":Ljava/lang/String;
    .end local v4    # "value":D
    :cond_1
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x39

    if-gt v3, v6, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0
.end method

.method protected readLongValue()J
    .locals 7

    .prologue
    .line 965
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v3, -0x1

    .line 966
    .local v0, "beginIndex":I
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2b

    if-ne v3, v6, :cond_2

    .line 967
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 970
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x30

    if-ge v3, v6, :cond_3

    .line 974
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v3, -0x1

    .line 975
    .local v1, "endIndex":I
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 977
    .local v4, "value":J
    return-wide v4

    .line 966
    .end local v1    # "endIndex":I
    .end local v2    # "text":Ljava/lang/String;
    .end local v4    # "value":J
    :cond_2
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2d

    if-eq v3, v6, :cond_0

    goto :goto_0

    .line 970
    :cond_3
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x39

    if-gt v3, v6, :cond_1

    .line 971
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0
.end method

.method readName()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0x5c

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1089
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v4, :cond_3

    .line 1093
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1094
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1113
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1117
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, "propertyName":Ljava/lang/String;
    return-object v2

    .line 1089
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_3
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1090
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "illeal jsonpath syntax. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1095
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    :cond_4
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v3, v4, :cond_5

    .line 1105
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v1

    .line 1106
    .local v1, "identifierFlag":Z
    if-eqz v1, :cond_1

    .line 1109
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1096
    .end local v1    # "identifierFlag":Z
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1097
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1101
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1113
    :cond_6
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1114
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected readOp()Lcom/alibaba/fastjson/JSONPath$Operator;
    .locals 5

    .prologue
    const/16 v4, 0x3d

    const/4 v1, 0x0

    .line 1025
    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v4, :cond_0

    .line 1028
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x21

    if-eq v2, v3, :cond_1

    .line 1032
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    .line 1040
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_4

    .line 1050
    .end local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_0
    if-eqz v1, :cond_6

    .line 1083
    :goto_1
    return-object v1

    .line 1026
    .restart local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1027
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto :goto_0

    .line 1029
    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1030
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1031
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto :goto_0

    .line 1033
    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1034
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v4, :cond_3

    .line 1038
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto :goto_0

    .line 1035
    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1036
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto :goto_0

    .line 1041
    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1042
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v4, :cond_5

    .line 1046
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto :goto_0

    .line 1043
    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1044
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto :goto_0

    .line 1051
    .end local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "not"

    .line 1053
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "like"

    .line 1070
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "rlike"

    .line 1072
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "in"

    .line 1074
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "between"

    .line 1076
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1079
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 1054
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1056
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "like"

    .line 1058
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "rlike"

    .line 1060
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "in"

    .line 1062
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "between"

    .line 1064
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1067
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 1059
    :cond_8
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .restart local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto/16 :goto_1

    .line 1061
    .end local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_9
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .restart local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto/16 :goto_1

    .line 1063
    .end local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_a
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .restart local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto/16 :goto_1

    .line 1065
    .end local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_b
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .restart local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto/16 :goto_1

    .line 1071
    .end local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_c
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .restart local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto/16 :goto_1

    .line 1073
    .end local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_d
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .restart local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto/16 :goto_1

    .line 1075
    .end local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_e
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .restart local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto/16 :goto_1

    .line 1077
    .end local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_f
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    .restart local v1    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    goto/16 :goto_1
.end method

.method readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x2e

    const/4 v6, 0x0

    .line 508
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-eqz v4, :cond_1

    .line 516
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    .line 578
    return-object v4

    .line 508
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 509
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 512
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x61

    if-ge v4, v5, :cond_4

    :cond_2
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x41

    if-lt v4, v5, :cond_0

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_0

    .line 513
    :goto_1
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    iget-char v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v4

    .line 510
    :cond_3
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    add-int/lit8 v2, v4, -0x30

    .line 511
    .local v2, "index":I
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-direct {v4, v2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V

    return-object v4

    .line 512
    .end local v2    # "index":I
    :cond_4
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_2

    goto :goto_1

    .line 517
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 519
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x24

    if-eq v4, v5, :cond_8

    .line 524
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v7, :cond_9

    .line 525
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 526
    .local v0, "c0":I
    const/4 v1, 0x0

    .line 527
    .local v1, "deep":Z
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 528
    if-eq v0, v7, :cond_a

    .line 532
    :cond_7
    :goto_2
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_b

    .line 540
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v4

    if-nez v4, :cond_d

    .line 544
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "propertyName":Ljava/lang/String;
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x28

    if-eq v4, v5, :cond_e

    .line 562
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v4, v3, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v4

    .line 520
    .end local v0    # "c0":I
    .end local v1    # "deep":Z
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 524
    :cond_9
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_6

    .line 565
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x5b

    if-eq v4, v5, :cond_12

    .line 569
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-eqz v4, :cond_13

    .line 575
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 528
    .restart local v0    # "c0":I
    .restart local v1    # "deep":Z
    :cond_a
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v7, :cond_7

    .line 529
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 530
    const/4 v1, 0x1

    goto :goto_2

    .line 533
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 537
    :goto_3
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    return-object v4

    .line 534
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_3

    .line 541
    :cond_d
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v4

    return-object v4

    .line 546
    .restart local v3    # "propertyName":Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 547
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x29

    if-eq v4, v5, :cond_f

    .line 559
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 548
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_4
    const-string/jumbo v4, "size"

    .line 552
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 556
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 549
    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_4

    .line 553
    :cond_11
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$SizeSegement;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegement;

    return-object v4

    .line 566
    .end local v0    # "c0":I
    .end local v1    # "deep":Z
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_12
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v4

    return-object v4

    .line 570
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 572
    .restart local v3    # "propertyName":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v4, v3, v6}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v4
.end method

.method readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1123
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    int-to-char v1, v3

    .line 1124
    .local v1, "quoate":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1126
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v3, -0x1

    .line 1127
    .local v0, "beginIndex":I
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v1, :cond_1

    .line 1131
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1133
    .local v2, "strValue":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1135
    return-object v2

    .line 1127
    .end local v2    # "strValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1131
    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_1
.end method

.method protected readValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 998
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1002
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2

    .line 1003
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 999
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 1002
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x27

    if-eq v1, v2, :cond_0

    .line 1006
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_3

    .line 1016
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 1007
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "null"

    .line 1009
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1012
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v1, 0x0

    .line 1010
    return-object v1
.end method

.method public final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 583
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-le v0, v2, :cond_0

    .line 590
    :goto_1
    return-void

    .line 583
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v2, :cond_2

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 583
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1
.end method
