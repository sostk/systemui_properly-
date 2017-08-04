.class public Lcom/meizu/flyme/activeview/json/TextAttrs;
.super Ljava/lang/Object;
.source "TextAttrs.java"


# instance fields
.field private background:Ljava/lang/Integer;

.field private ellipsize:Ljava/lang/String;

.field private fontFamily:Ljava/lang/String;

.field private fontStyle:Ljava/lang/String;

.field private gravity:Ljava/lang/String;

.field private letterSpacing:Ljava/lang/String;

.field private lineSpacingExtra:Ljava/lang/String;

.field private mLetterSpacingValue:Ljava/lang/Float;

.field private mLineSpacingExtraValue:Ljava/lang/Float;

.field private mTextSizeValue:Ljava/lang/Float;

.field private maxLength:Ljava/lang/Integer;

.field private maxLines:Ljava/lang/Integer;

.field private opacity:Ljava/lang/Integer;

.field private singleLine:Ljava/lang/Boolean;

.field private text:Ljava/lang/String;

.field private textColor:Ljava/lang/Integer;

.field private textSize:Ljava/lang/String;

.field private textStyle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackground()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->background:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEllipsize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->ellipsize:Ljava/lang/String;

    return-object v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->fontStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getGravity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->gravity:Ljava/lang/String;

    return-object v0
.end method

.method public getLetterSpacing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->letterSpacing:Ljava/lang/String;

    return-object v0
.end method

.method public getLetterSpacingValue(Landroid/content/Context;)Ljava/lang/Float;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->letterSpacing:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->mLetterSpacingValue:Ljava/lang/Float;

    return-object v0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->letterSpacing:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->letterSpacing:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->mLetterSpacingValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getLineSpacingExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->lineSpacingExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSpacingExtraValue(Landroid/content/Context;)Ljava/lang/Float;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->lineSpacingExtra:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->mLineSpacingExtraValue:Ljava/lang/Float;

    return-object v0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->lineSpacingExtra:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->lineSpacingExtra:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->mLineSpacingExtraValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getMaxLength()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->maxLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxLines()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->maxLines:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOpacity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->opacity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSingleLine()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->singleLine:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->textColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTextSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->textSize:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSizeValue(Landroid/content/Context;)Ljava/lang/Float;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->textSize:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->mTextSizeValue:Ljava/lang/Float;

    return-object v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->textSize:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->textSize:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/meizu/flyme/activeview/utils/DisplayUnitUtil;->getPixelValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->mTextSizeValue:Ljava/lang/Float;

    goto :goto_0
.end method

.method public getTextStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->textStyle:Ljava/lang/String;

    return-object v0
.end method

.method public setBackground(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "background"    # Ljava/lang/Integer;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->background:Ljava/lang/Integer;

    .line 84
    return-void
.end method

.method public setEllipsize(Ljava/lang/String;)V
    .locals 0
    .param p1, "ellipsize"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->ellipsize:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->fontFamily:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setFontStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontStyle"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->fontStyle:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setGravity(Ljava/lang/String;)V
    .locals 0
    .param p1, "gravity"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->gravity:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setLetterSpacing(Ljava/lang/String;)V
    .locals 0
    .param p1, "letterSpacing"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->letterSpacing:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setLineSpacingExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "lineSpacingExtra"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->lineSpacingExtra:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setMaxLength(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxLength"    # Ljava/lang/Integer;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->maxLength:Ljava/lang/Integer;

    .line 107
    return-void
.end method

.method public setMaxLines(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxLines"    # Ljava/lang/Integer;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->maxLines:Ljava/lang/Integer;

    .line 115
    return-void
.end method

.method public setOpacity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "opacity"    # Ljava/lang/Integer;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->opacity:Ljava/lang/Integer;

    .line 99
    return-void
.end method

.method public setSingleLine(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "singleLine"    # Ljava/lang/Boolean;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->singleLine:Ljava/lang/Boolean;

    .line 123
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->text:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTextColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "textColor"    # Ljava/lang/Integer;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->textColor:Ljava/lang/Integer;

    .line 76
    return-void
.end method

.method public setTextSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "textSize"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->textSize:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTextStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "textStyle"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/TextAttrs;->textStyle:Ljava/lang/String;

    .line 68
    return-void
.end method
