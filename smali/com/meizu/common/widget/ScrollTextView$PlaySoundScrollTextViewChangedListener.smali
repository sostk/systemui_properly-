.class Lcom/meizu/common/widget/ScrollTextView$PlaySoundScrollTextViewChangedListener;
.super Ljava/lang/Object;
.source "ScrollTextView.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaySoundScrollTextViewChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 0

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$PlaySoundScrollTextViewChangedListener;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/ScrollTextView;Lcom/meizu/common/widget/ScrollTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/ScrollTextView;
    .param p2, "x1"    # Lcom/meizu/common/widget/ScrollTextView$1;

    .prologue
    .line 1926
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView$PlaySoundScrollTextViewChangedListener;-><init>(Lcom/meizu/common/widget/ScrollTextView;)V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/meizu/common/widget/ScrollTextView;II)V
    .locals 1
    .param p1, "view"    # Lcom/meizu/common/widget/ScrollTextView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$PlaySoundScrollTextViewChangedListener;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$1600(Lcom/meizu/common/widget/ScrollTextView;)V

    .line 1930
    return-void
.end method
