.class Lcom/flyme/systemui/qs/tiles/DriveModeTile$1;
.super Ljava/lang/Object;
.source "DriveModeTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/DriveModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/DriveModeTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/DriveModeTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/qs/tiles/DriveModeTile;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/DriveModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriveModeChanged()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/DriveModeTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/DriveModeTile;->-wrap0(Lcom/flyme/systemui/qs/tiles/DriveModeTile;)V

    .line 88
    return-void
.end method
