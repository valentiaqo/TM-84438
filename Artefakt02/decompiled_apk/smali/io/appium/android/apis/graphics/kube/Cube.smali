.class public Lio/appium/android/apis/graphics/kube/Cube;
.super Lio/appium/android/apis/graphics/kube/GLShape;
.source "Cube.java"


# static fields
.field public static final kBack:I = 0x4

.field public static final kBottom:I = 0x0

.field public static final kFront:I = 0x1

.field public static final kLeft:I = 0x2

.field public static final kRight:I = 0x3

.field public static final kTop:I = 0x5


# direct methods
.method public constructor <init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V
    .locals 12
    .param p1, "world"    # Lio/appium/android/apis/graphics/kube/GLWorld;
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "back"    # F
    .param p5, "right"    # F
    .param p6, "top"    # F
    .param p7, "front"    # F

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/kube/GLShape;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;)V

    .line 24
    move/from16 v0, p4

    invoke-virtual {p0, p2, p3, v0}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v3

    .line 25
    .local v3, "leftBottomBack":Lio/appium/android/apis/graphics/kube/GLVertex;
    move/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {p0, v0, p3, v1}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v7

    .line 26
    .local v7, "rightBottomBack":Lio/appium/android/apis/graphics/kube/GLVertex;
    move/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {p0, p2, v0, v1}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v5

    .line 27
    .local v5, "leftTopBack":Lio/appium/android/apis/graphics/kube/GLVertex;
    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p4

    invoke-virtual {p0, v0, v1, v2}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v9

    .line 28
    .local v9, "rightTopBack":Lio/appium/android/apis/graphics/kube/GLVertex;
    move/from16 v0, p7

    invoke-virtual {p0, p2, p3, v0}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v4

    .line 29
    .local v4, "leftBottomFront":Lio/appium/android/apis/graphics/kube/GLVertex;
    move/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {p0, v0, p3, v1}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v8

    .line 30
    .local v8, "rightBottomFront":Lio/appium/android/apis/graphics/kube/GLVertex;
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {p0, p2, v0, v1}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v6

    .line 31
    .local v6, "leftTopFront":Lio/appium/android/apis/graphics/kube/GLVertex;
    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {p0, v0, v1, v2}, Lio/appium/android/apis/graphics/kube/Cube;->addVertex(FFF)Lio/appium/android/apis/graphics/kube/GLVertex;

    move-result-object v10

    .line 35
    .local v10, "rightTopFront":Lio/appium/android/apis/graphics/kube/GLVertex;
    new-instance v11, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v11, v3, v4, v8, v7}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {p0, v11}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 37
    new-instance v11, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v11, v4, v6, v10, v8}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {p0, v11}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 39
    new-instance v11, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v11, v3, v5, v6, v4}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {p0, v11}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 41
    new-instance v11, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v11, v7, v8, v10, v9}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {p0, v11}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 43
    new-instance v11, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v11, v3, v7, v9, v5}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {p0, v11}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 45
    new-instance v11, Lio/appium/android/apis/graphics/kube/GLFace;

    invoke-direct {v11, v5, v9, v10, v6}, Lio/appium/android/apis/graphics/kube/GLFace;-><init>(Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;Lio/appium/android/apis/graphics/kube/GLVertex;)V

    invoke-virtual {p0, v11}, Lio/appium/android/apis/graphics/kube/Cube;->addFace(Lio/appium/android/apis/graphics/kube/GLFace;)V

    .line 47
    return-void
.end method
