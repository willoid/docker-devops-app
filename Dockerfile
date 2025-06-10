#Step 1
FROM node:18-alpine

# Step 2 Set the working directory
WORKDIR /app

# Step 3 Copy the dependecies
COPY package*.json ./

# Step 4 Install the copied dependencies
RUN npm install

# Step 5 Copy all files
COPY . .

# Step 6 Expose the port for the app
EXPOSE 5173

# Step 7 Start the app
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0."]
