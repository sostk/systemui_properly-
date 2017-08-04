.class Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$2;
.super Landroid/database/ContentObserver;
.source "CornerAlphaOptimizedImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$2;->this$0:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 347
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$2;->this$0:Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->-wrap0(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V

    .line 346
    return-void
.end method
