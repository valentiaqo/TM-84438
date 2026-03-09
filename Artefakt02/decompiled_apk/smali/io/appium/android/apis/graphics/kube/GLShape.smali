.class public Lio/appium/android/apis/graphics/kube/GLShape;
.super Ljava/lang/Object;
.source "GLShape.java"


# instance fields
.field public mAnimateTransform:Lio/appium/android/apis/graphics/kube/M4;

.field protected mFaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/appium/android/apis/graphics/kube/GLFace;",
            ">;"
        }
    .end annotation
.end field

.field protected mIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mTransform:Lio/appium/android/apis/graphics/kube/M4;

.field protected mVertexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/appium/android/apis/graphics/kube/GLVertex;",
            ">;"
        }
    .end annotation
.end field

.field protected mWorld:Lio/appium/android/apis/graphics/kube/GLWorld;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/graphics/kube/GLWorld;)V
    .locals 1
    .param p1, "world"    # Lio/appium/android/apis/graphics/kube/GLWorld;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mFaceList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mVertexList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mIndexList:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mWorld:Lio/appium/android/apis/graphics/kube/GLWorld;

    .line 27
    return-void
.end method


# virtual methods
.method public addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V
    .locals 1
    .param p1, "face"    # Lio/appium/android/apis/graphics/kube/GLFace;

    .prologue
    .line 30
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mFaceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 58
    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/appium/android/apis/graphics/kube/GLVertex;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 61
    .local v1, "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    iget v3, v1, Lio/appium/android/apis/graphics/kube/GLVertex;->x:F

    cmpl-float v3, v3, p1

    if-nez v3, :cond_0

    iget v3, v1, Lio/appium/android/apis/graphics/kube/GLVertex;->y:F

    cmpl-float v3, v3, p2

    if-nez v3, :cond_0

    iget v3, v1, Lio/appium/android/apis/graphics/kube/GLVertex;->z:F

    cmpl-float v3, v3, p3

    if-nez v3, :cond_0

    move-object v2, v1

    .line 69
    .end local v1    # "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    .local v2, "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    :goto_0
    return-object v2

    .line 67
    .end local v2    # "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    :cond_1
    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mWorld:Lio/appium/android/apis/graphics/kube/GLWorld;

    invoke-virtual {v3, p1, p2, p3}, Lio/appium/android/apis/graphics/kube/GLWorld;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v1

    .line 68
    .restart local v1    # "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 69
    .end local v1    # "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    .restart local v2    # "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    goto :goto_0
.end method

.method public animateTransform(Lio/appium/android/apis/graphics/kube/M4;)V
    .locals 3
    .param p1, "transform"    # Lio/appium/android/apis/graphics/kube/M4;

    .prologue
    .line 73
    iput-object p1, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mAnimateTransform:Lio/appium/android/apis/graphics/kube/M4;

    .line 75
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    invoke-virtual {v2, p1}, Lio/appium/android/apis/graphics/kube/M4;->multiply(Lio/appium/android/apis/graphics/kube/M4;)Lio/appium/android/apis/graphics/kube/M4;

    move-result-object p1

    .line 78
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mVertexList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/appium/android/apis/graphics/kube/GLVertex;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/graphics/kube/GLVertex;

    .line 81
    .local v1, "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mWorld:Lio/appium/android/apis/graphics/kube/GLWorld;

    invoke-virtual {v2, v1, p1}, Lio/appium/android/apis/graphics/kube/GLWorld;->transformVertex(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/M4;)V

    goto :goto_0

    .line 83
    .end local v1    # "vertex":Lio/appium/android/apis/graphics/kube/GLVertex;
    :cond_1
    return-void
.end method

.method public endAnimation()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lio/appium/android/apis/graphics/kube/M4;

    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mAnimateTransform:Lio/appium/android/apis/graphics/kube/M4;

    invoke-direct {v0, v1}, Lio/appium/android/apis/graphics/kube/M4;-><init>(Lio/appium/android/apis/graphics/kube/M4;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mAnimateTransform:Lio/appium/android/apis/graphics/kube/M4;

    invoke-virtual {v0, v1}, Lio/appium/android/apis/graphics/kube/M4;->multiply(Lio/appium/android/apis/graphics/kube/M4;)Lio/appium/android/apis/graphics/kube/M4;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mTransform:Lio/appium/android/apis/graphics/kube/M4;

    goto :goto_0
.end method

.method public getIndexCount()I
    .locals 4

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "count":I
    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mFaceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 48
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/appium/android/apis/graphics/kube/GLFace;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/graphics/kube/GLFace;

    .line 50
    .local v1, "face":Lio/appium/android/apis/graphics/kube/GLFace;
    invoke-virtual {v1}, Lio/appium/android/apis/graphics/kube/GLFace;->getIndexCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 51
    goto :goto_0

    .line 52
    .end local v1    # "face":Lio/appium/android/apis/graphics/kube/GLFace;
    :cond_0
    return v0
.end method

.method public putIndices(Ljava/nio/ShortBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 38
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mFaceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 39
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/appium/android/apis/graphics/kube/GLFace;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/graphics/kube/GLFace;

    .line 41
    .local v0, "face":Lio/appium/android/apis/graphics/kube/GLFace;
    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/kube/GLFace;->putIndices(Ljava/nio/ShortBuffer;)V

    goto :goto_0

    .line 43
    .end local v0    # "face":Lio/appium/android/apis/graphics/kube/GLFace;
    :cond_0
    return-void
.end method

.method public setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "color"    # Lio/appium/android/apis/graphics/kube/GLColor;

    .prologue
    .line 34
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/GLShape;->mFaceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-virtual {v0, p2}, Lio/appium/android/apis/graphics/kube/GLFace;->setColor(Lio/appium/android/apis/graphics/kube/GLColor;)V

    .line 35
    return-void
.end method

.method public startAnimation()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
