.class Lorg/flerovium/settings/livedisplay/DisplayColor$2;
.super Ljava/lang/Object;
.source "DisplayColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/livedisplay/DisplayColor;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/livedisplay/DisplayColor;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/livedisplay/DisplayColor;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/flerovium/settings/livedisplay/DisplayColor$2;->this$0:Lorg/flerovium/settings/livedisplay/DisplayColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/flerovium/settings/livedisplay/DisplayColor$2;->this$0:Lorg/flerovium/settings/livedisplay/DisplayColor;

    # getter for: Lorg/flerovium/settings/livedisplay/DisplayColor;->mSeekBars:[Lorg/flerovium/settings/livedisplay/DisplayColor$ColorSeekBar;
    invoke-static {v1}, Lorg/flerovium/settings/livedisplay/DisplayColor;->access$100(Lorg/flerovium/settings/livedisplay/DisplayColor;)[Lorg/flerovium/settings/livedisplay/DisplayColor$ColorSeekBar;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/flerovium/settings/livedisplay/DisplayColor$2;->this$0:Lorg/flerovium/settings/livedisplay/DisplayColor;

    # getter for: Lorg/flerovium/settings/livedisplay/DisplayColor;->mSeekBars:[Lorg/flerovium/settings/livedisplay/DisplayColor$ColorSeekBar;
    invoke-static {v1}, Lorg/flerovium/settings/livedisplay/DisplayColor;->access$100(Lorg/flerovium/settings/livedisplay/DisplayColor;)[Lorg/flerovium/settings/livedisplay/DisplayColor$ColorSeekBar;

    move-result-object v1

    aget-object v1, v1, v0

    # getter for: Lorg/flerovium/settings/livedisplay/DisplayColor$ColorSeekBar;->mSeekBar:Lorg/flerovium/settings/IntervalSeekBar;
    invoke-static {v1}, Lorg/flerovium/settings/livedisplay/DisplayColor$ColorSeekBar;->access$000(Lorg/flerovium/settings/livedisplay/DisplayColor$ColorSeekBar;)Lorg/flerovium/settings/IntervalSeekBar;

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/livedisplay/DisplayColor$2;->this$0:Lorg/flerovium/settings/livedisplay/DisplayColor;

    # getter for: Lorg/flerovium/settings/livedisplay/DisplayColor;->defaultRGB:F
    invoke-static {v2}, Lorg/flerovium/settings/livedisplay/DisplayColor;->access$200(Lorg/flerovium/settings/livedisplay/DisplayColor;)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/flerovium/settings/IntervalSeekBar;->setProgressFloat(F)V

    .line 157
    iget-object v1, p0, Lorg/flerovium/settings/livedisplay/DisplayColor$2;->this$0:Lorg/flerovium/settings/livedisplay/DisplayColor;

    # getter for: Lorg/flerovium/settings/livedisplay/DisplayColor;->mCurrentColors:[F
    invoke-static {v1}, Lorg/flerovium/settings/livedisplay/DisplayColor;->access$300(Lorg/flerovium/settings/livedisplay/DisplayColor;)[F

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/livedisplay/DisplayColor$2;->this$0:Lorg/flerovium/settings/livedisplay/DisplayColor;

    # getter for: Lorg/flerovium/settings/livedisplay/DisplayColor;->defaultRGB:F
    invoke-static {v2}, Lorg/flerovium/settings/livedisplay/DisplayColor;->access$200(Lorg/flerovium/settings/livedisplay/DisplayColor;)F

    move-result v2

    aput v2, v1, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lorg/flerovium/settings/livedisplay/DisplayColor$2;->this$0:Lorg/flerovium/settings/livedisplay/DisplayColor;

    iget-object v2, p0, Lorg/flerovium/settings/livedisplay/DisplayColor$2;->this$0:Lorg/flerovium/settings/livedisplay/DisplayColor;

    # getter for: Lorg/flerovium/settings/livedisplay/DisplayColor;->mCurrentColors:[F
    invoke-static {v2}, Lorg/flerovium/settings/livedisplay/DisplayColor;->access$300(Lorg/flerovium/settings/livedisplay/DisplayColor;)[F

    move-result-object v2

    # invokes: Lorg/flerovium/settings/livedisplay/DisplayColor;->updateColors([F)V
    invoke-static {v1, v2}, Lorg/flerovium/settings/livedisplay/DisplayColor;->access$400(Lorg/flerovium/settings/livedisplay/DisplayColor;[F)V

    .line 160
    return-void
.end method
