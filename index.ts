

 const main = async () => {
   const app = express();
   // app.set("trust proxy", 1);

   const httpServer = http.createServer(app);
   const server = new ApolloServer({
     // typeDefs,
     // resolvers,
     plugins: [ApolloServerPluginDrainHttpServer({ httpServer })],
   }) as any;
   await server.start();
   server.applyMiddleware({ app });

   app.listen(process.env.PORT as unknown as string, () => {
     console.log(`server started on localhost:${process.env.PORT}`);
   });
 }

 main().catch((err) => {
   console.error(err);
 });

